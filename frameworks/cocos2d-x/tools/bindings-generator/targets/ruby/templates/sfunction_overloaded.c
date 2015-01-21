## ===== static function implementation template - for overloaded functions
RBVAL ${signature_name}(int argc, RBVAL *argv, RBVAL clazz)
{
	bool ok = true;
	#for func in $implementations
	
	#if len($func.arguments) >= $func.min_args
	#set arg_count = len($func.arguments)
	#set arg_idx = $func.min_args
	#while $arg_idx <= $arg_count
	do {
		if (argc == ${arg_idx}) {
			#set arg_list = ""
			#set arg_array = []
			#set count = 0
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
			if (!ok) { break; }
			#end if
			#end while
			#set $arg_list = ", ".join($arg_array)
			#if str($func.ret_type) != "void"
				#if $func.ret_type.is_enum
			int ret = (int)${namespaced_class_name}::${func.func_name}($arg_list);
				#else
			${func.ret_type.get_whole_name($generator)} ret = ${namespaced_class_name}::${func.func_name}($arg_list);
				#end if
			RBVAL value=RBNil();
			${func.ret_type.from_native({"generator": $generator,
										 "in_value": "ret",
										 "out_value": "value",
										 "ntype": str($func.ret_type),
										 "level": 3})};
			#else
			${namespaced_class_name}::${func.func_name}($arg_list);
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
	} while (0);
	#end while
	#end if
	#end for
	rb_raise_arg_error("${signature_name} : wrong number of arguments");
	return RBNil();
}
