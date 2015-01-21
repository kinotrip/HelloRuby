## ===== static function implementation template
RBVAL ${signature_name}(int argc, RBVAL *argv, RBVAL clazz)
{
#if len($arguments) > 0
	bool ok = true;
#end if
#if len($arguments) >= $min_args
	#set arg_count = len($arguments)
	#set arg_idx = $min_args
	#while $arg_idx <= $arg_count
	if (argc == ${arg_idx}) {
		#set arg_list = ""
		#set arg_array = []
		#set $count = 0
		#while $count < $arg_idx
			#set $arg = $arguments[$count]
		${arg.to_string($generator)} arg${count};
			#set $count = $count + 1
		#end while
		#set $count = 0
		#while $count < $arg_idx
			#set $arg = $arguments[$count]
		${arg.to_native({"generator": $generator,
			"in_value": "argv[" + str(count) + "]",
			"out_value": "arg" + str(count),
			"class_name": $class_name,
			"level": 2,
			"ntype": str($arg)})};
	        #set $arg_array += ["arg"+str($count)]
	        #set $count = $count + 1
		#end while
		#if $arg_idx > 0
			if (!ok) {rb_raise_arg_error("${signature_name} : Error processing arguments");return RBNil();}
		#end if
		#set $arg_list = ", ".join($arg_array)
	#if str($ret_type) != "void"
		#if $ret_type.is_enum
		int ret = (int)${namespaced_class_name}::${func_name}($arg_list);
		#else
		${ret_type.get_whole_name($generator)} ret = ${namespaced_class_name}::${func_name}($arg_list);
		#end if
		RBVAL value=RBNil();
		${ret_type.from_native({"generator": $generator,
								"in_value": "ret",
								"out_value": "value",
								"ntype": str($ret_type),
								"level": 1})};
	#else
		${namespaced_class_name}::${func_name}($arg_list);
				#if ($func_name.startswith('set') and ($arg_idx==1) and (len($func_name)>3))
    			#set setter=$func_name[3].lower()
    			#if (len($func_name)>4)
    				#set setter=setter+$func_name[4:]
    			#end if    			
				static RBVAL propSYM=0l;
				if (propSYM==0l){
					propSYM=rb_sym_from_name("${setter}");
				}
				rb_cvar_set_bridge(clazz,propSYM,argv[0]);
				#end if
		RBVAL value=RBNil();
	#end if
		return value;
	}
		#set $arg_idx = $arg_idx + 1
	#end while
#end if
	rb_raise_arg_error("${signature_name} : wrong number of arguments");
	return RBNil();
}

