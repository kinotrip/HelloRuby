#set has_constructor = False
#if $current_class.methods.has_key('constructor')
#set has_constructor = True
${current_class.methods.constructor.generate_code($current_class)}
#end if

#set generator = $current_class.generator
#set methods = $current_class.methods_clean()
#set st_methods = $current_class.static_methods_clean()

void rb_register_${generator.prefix}_${current_class.class_name}() {
	#if $current_class.namespaced_class_name.startswith('cocos2d')
	#set $moduleStr="true"
	#else
	#set $moduleStr="false"
	#end if
		
	#if len($current_class.parents) > 0
	RBVAL classValue=rb_define_class_bridge("${current_class.target_class_name}",rb_get_class_value("${current_class.parents[0].namespaced_class_name}"),${moduleStr});
	#else
	RBVAL classValue=rb_define_class_bridge("${current_class.target_class_name}",rb_get_root_class(),${moduleStr});
	#end if
	#for m in methods
	#set fn = m['impl']

 	#set attr_judge = m['name']	
	#if (attr_judge.endswith('_Q_'))
	#set attr_judge = attr_judge[:-3]+'?'
	#end if
	rb_define_method_bridge(classValue,"${attr_judge}",RB_FUNC(${fn.signature_name}));

  #if (attr_judge.startswith('get'))
   #set getter=attr_judge[3].lower()
   #if len(attr_judge)>4
   #set getter=getter+attr_judge[4:]
   #end if
   rb_define_method_bridge(classValue,"${getter}",RB_FUNC(${fn.signature_name}));
  #else
   #if ((attr_judge.startswith('set'))and(len(attr_judge)>3))
    #set setter=attr_judge[3].lower()
    #if (len(attr_judge)>4)
    #set setter=setter+attr_judge[4:]
    #end if
    #set setter=setter+"=";
    rb_define_method_bridge(classValue,"${setter}",RB_FUNC(${fn.signature_name}));
   #end if
  #end if
	
	#end for

	#for m in st_methods
	#set fn = m['impl']
	
 	#set attr_judge = m['name']	
	#if (attr_judge.endswith('_Q_'))
	#set attr_judge = attr_judge[:-3]+'?'
	#end if

	rb_define_singleton_method_bridge(classValue,"${attr_judge}",RB_FUNC(${fn.signature_name}));

#set attr_judge = m['name']
  #if (attr_judge.startswith('get'))
   #set getter=attr_judge[3].lower()
   #if len(attr_judge)>4
   #set getter=getter+attr_judge[4:]
   #end if
   rb_define_singleton_method_bridge(classValue,"${getter}",RB_FUNC(${fn.signature_name}));
  #else
   #if ((attr_judge.startswith('set'))and(len(attr_judge)>3))
    #set setter=attr_judge[3].lower()
    #if (len(attr_judge)>4)
    #set setter=setter+attr_judge[4:]
    #end if
    #set setter=setter+"=";
    rb_define_singleton_method_bridge(classValue,"${setter}",RB_FUNC(${fn.signature_name}));
   #end if
  #end if
	
	#end for

	#if has_constructor
	rb_define_singleton_method_bridge(classValue,"new",RB_FUNC(${current_class.methods.constructor.signature_name}));
	#end if

	TypeTest<${current_class.namespaced_class_name}> t;
	std::string typeName = t.s_name();
	rbb_register_class_value(typeName,classValue);
	rbb_register_class_value("${current_class.namespaced_class_name}",classValue);
}
