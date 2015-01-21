do {
	RBVAL rbproc= ${in_value};
	auto lambda = [=](${lambda_parameters}) -> ${ret_type.name} {
		#set arg_count = len($param_types)
		#if $arg_count > 0
		RBVAL argarr=rb_array_new_brige();
		#end if
		#set $count = 0
		RBVAL templargv;
		#while $count < $arg_count
			#set $arg = $param_types[$count]			
		${arg.from_native({"generator": $generator,
							 "in_value": "larg" + str(count),
							 "out_value": "templargv",
							 "class_name": $class_name,
							 "level": 2,
							 "ntype": str($arg)})};
		rb_array_push_bridge(argarr,templargv);
			#set $count = $count + 1
		#end while
		#if $arg_count > 0
		RBVAL value=rb_proc_call_bridge(rbproc, argarr);
		#else
		RBVAL value=rb_proc_call_bridge(rbproc, RBNil());
		#end if
		#if $ret_type.name != "void"
		${ret_type.get_whole_name($generator)} ret;
		${ret_type.to_native({"generator": $generator,
							 "in_value": "value",
							 "out_value": "ret",
							 "ntype": str($ret_type),
							 "level": 2})};
		return ret;
		#end if
	};
	${out_value} = lambda;
} while(0)
