## ===== instance function implementation template - for overloaded functions
RBVAL ${signature_name}(int argc, RBVAL *argv, RBVAL self)
{
	bool ok = true;
	RBVAL value=RBNil();
	${namespaced_class_name}* cobj = nullptr;
#if not $is_constructor
	#if (($class_name=='FileUtils')or($class_name=='Application')or($class_name=='SimpleAudioEngine'))
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
#for func in $implementations
#if len($func.arguments) >= $func.min_args
	#set arg_count = len($func.arguments)
	#set arg_idx = $func.min_args
	#while $arg_idx <= $arg_count
	#set arg_list = ""
	#set arg_array = []
	do {
		#if $func.min_args >= 0
		if (argc == $arg_idx) {
			#set $count = 0
			#while $count < $arg_idx
			#set $arg = $func.arguments[$count]
			${arg.to_string($generator)} arg${count};
			${arg.to_native({"generator": $generator,
							 "in_value": "argv[" + str(count) + "]",
							 "out_value": "arg" + str(count),
							 "class_name": $class_name,
							 "level": 3,
							 "ntype": str($arg)})};
				#set $arg_array += ["arg"+str(count)]
				#set $count = $count + 1
			#if $arg_idx > 0
			if (!ok) {rb_raise_arg_error("${signature_name} : Error processing argument $count ( $arg_idx )");return RBNil(); }
			#end if
			#end while
			#set $arg_list = ", ".join($arg_array)
		#end if
		#if $is_constructor
			cobj = new ${namespaced_class_name}(${arg_list});
#if not $generator.script_control_cpp
			cocos2d::Ref *_ccobj = dynamic_cast<cocos2d::Ref *>(cobj);
			if (_ccobj) {
				_ccobj->autorelease();
			}
#end if
			value = rbb_create_value(cobj,RBCLZ);
		#else
			#if str($func.ret_type) != "void"
				#if $func.ret_type.is_enum
			int ret = (int)cobj->${func.func_name}($arg_list);
				#else
			${func.ret_type.get_whole_name($generator)} ret = cobj->${func.func_name}($arg_list);
				#end if
			RBVAL value = RBNil();
			${func.ret_type.from_native({"generator": $generator,
													  "in_value": "ret",
													  "out_value": "value",
													  "ntype": str($func.ret_type),
													  "level": 2})};
			return value;
			#else
			cobj->${func.func_name}($arg_list);
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
			return RBNil();
			#end if
		#end if
		}
	} while(0);

	#set $arg_idx = $arg_idx + 1
	#end while
#end if
#end for
#if $is_constructor
	if (cobj) {		
		return value;
	}
#end if
	rb_raise_arg_error("${signature_name} : wrong number of arguments");
	return RBNil();
}
