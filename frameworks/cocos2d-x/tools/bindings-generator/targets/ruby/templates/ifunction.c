## ===== instance function implementation template
RBVAL ${signature_name}(int argc, RBVAL *argv, RBVAL self)
{
	bool ok = true;
#if not $is_constructor	
	${namespaced_class_name}* cobj = nullptr;
	#if (($class_name=='FileUtils')or($class_name=='Application'))
		ok=rb_value_get_ptr_raw(self,&cobj);
	#else		
		ok=rb_value_get_ptr(self,&cobj);
	#end if	
	if (!ok) {rb_raise_arg_error("${signature_name} : self ptr is null");return RBNil();}
#else
		static RBVAL RBCLZ=0;
		if (RBCLZ==0){
			TypeTest<${namespaced_class_name}> t;
			RBCLZ=rb_get_class_value(t.s_name());
		}
#end if
#if len($arguments) >= $min_args
	#set arg_count = len($arguments)
	#set arg_idx = $min_args
	#while $arg_idx <= $arg_count
		if (argc == ${arg_idx}) {
		#set $count = 0
		#while $count < $arg_idx
			#set $arg = $arguments[$count]
			${arg.to_string($generator)} arg${count};
			#set $count = $count + 1
		#end while
		#set $count = 0
		#set arg_list = ""
		#set arg_array = []
		#while $count < $arg_idx
			#set $arg = $arguments[$count]
			${arg.to_native({"generator": $generator,
							 "in_value": "argv[" + str(count) + "]",
							 "out_value": "arg" + str(count),
							 "class_name": $class_name,
							 "level": 2,
							 "ntype": str($arg)})};
			#set $arg_array += ["arg"+str(count)]
			#set $count = $count + 1
		#end while
		#if $arg_idx > 0
			if (!ok) {rb_raise_arg_error("${signature_name} : Error processing argument $count ( $arg_idx )");return RBNil();}
		#end if
		#set $arg_list = ", ".join($arg_array)
		#if $is_constructor
			${namespaced_class_name}* cobj = new ${namespaced_class_name}($arg_list);
			#if not $generator.script_control_cpp
				cocos2d::Ref *_ccobj = dynamic_cast<cocos2d::Ref *>(cobj);
				if (_ccobj) {
					_ccobj->autorelease();
				}
			#end if
			RBVAL value = rbb_create_value(cobj,RBCLZ);
		#else
			RBVAL value = RBNil();
			#if $ret_type.name != "void"
				#if $ret_type.is_enum
					int ret = (int)cobj->${func_name}($arg_list);
				#else
					${ret_type.get_whole_name($generator)} ret = cobj->${func_name}($arg_list);
				#end if				
				${ret_type.from_native({"generator": $generator,
										"in_value": "ret",
										"out_value": "value",
										"ntype": str($ret_type),
										"level": 2})};
			#else
				cobj->${func_name}($arg_list);
				#if ($func_name.startswith('set') and ($arg_idx==1) and (len($func_name)>3))
    			#set setter=$func_name[3].lower()
    			#if (len($func_name)>4)
    				#set setter=setter+$func_name[4:]
    			#end if    			
				static RBVAL propSYM=0l;
				if (propSYM==0l){
					propSYM=rb_sym_from_name("${setter}");
				}
				rb_ivar_set_bridge(self,propSYM,argv[0]);
				#end if
			#end if
		#end if
		return value;
		}
		#set $arg_idx = $arg_idx + 1
	#end while
#end if

	rb_raise_arg_error("${signature_name} : wrong number of arguments");
	return RBNil();
}
