#include "ManualImplement.h"

#include "RubyValueMap.h"
#include "BindingHelper.h"

#include "cocos2d.h"

void rb_register_tools_class(){
	RBVAL pointClassValue=rb_cPoint();
	rb_define_attr_bridge(pointClassValue,"x");
	rb_define_attr_bridge(pointClassValue,"y");
	RBVAL sizeClassValue=rb_cSize();
	rb_define_attr_bridge(sizeClassValue,"width");
	rb_define_attr_bridge(sizeClassValue,"height");
	RBVAL rectClassValue=rb_cRect();
	rb_define_attr_bridge(rectClassValue,"x");
	rb_define_attr_bridge(rectClassValue,"y");
	rb_define_attr_bridge(rectClassValue,"width");
	rb_define_attr_bridge(rectClassValue,"height");
}

class LayerWithInit :public cocos2d::Layer{
public:
	virtual bool init(){
		return Layer::init();
	}
};

RBVAL rb_cocos2dx_LayerWithInit_new(int argc, RBVAL *argv, RBVAL clazz){
	bool ok = true;
		if (argc == 0) {
			LayerWithInit* cobj = new LayerWithInit();
				cocos2d::Ref *_ccobj = dynamic_cast<cocos2d::Ref *>(cobj);
				if (_ccobj) {
					_ccobj->autorelease();
				}
			TypeTest<LayerWithInit> t;
			std::string typeName = t.s_name();
			RBVAL value = rbb_create_value(cobj,clazz);
		return value;
		}

	rb_raise_arg_error("rb_cocos2dx_LayerWithInit_new : wrong number of arguments");
	return RBNil();
}

RBVAL rb_cocos2dx_LayerWithInit_init(int argc, RBVAL *argv, RBVAL self)
{
	if (argc == 0) {
		bool ok = true;
		LayerWithInit* cobj = nullptr;
		ok=rb_value_get_ptr(self,&cobj);
		if (!ok) {rb_raise_arg_error("rb_cocos2dx_LayerWithInit_init : self ptr is null");return RBNil();}
		bool ret=cobj->init();
		return bool_to_rb_value(ret);
	}
	rb_raise_arg_error("rb_cocos2dx_Layer_create : wrong number of arguments");
	return RBNil();
}

void rb_register_cocos2dx_LayerWithInit() {
	RBVAL classValue=rb_define_class_bridge("Layer",rb_get_class_value("cocos2d::Layer"),true);
	rb_define_singleton_method_bridge(classValue,"new",RB_FUNC(rb_cocos2dx_LayerWithInit_new));
	rb_define_method_bridge(classValue,"init",RB_FUNC(rb_cocos2dx_LayerWithInit_init));

	TypeTest<LayerWithInit> t;
	std::string typeName = t.s_name();
	rbb_register_class_value(typeName,classValue);
	rbb_register_class_value("LayerWithInit",classValue);
}



RBVAL rb_cocos2dx_EventListenerTouchOneByOne_set_onTouchBegan(int argc, RBVAL *argv, RBVAL self){
	if (argc == 1) {
		bool ok = true;
		cocos2d::EventListenerTouchOneByOne* cobj = nullptr;
		ok=rb_value_get_ptr(self,&cobj);
		if (!ok) {rb_raise_arg_error("rb_cocos2dx_EventListenerTouchOneByOne_set_onTouchBegan : self ptr is null");return RBNil();}
		rb_ivar_set_bridge(self,SYM_onTouchBegan(),argv[0]);
		RBVAL rbproc= argv[0];
		cobj->onTouchBegan=[rbproc](cocos2d::Touch* touch, cocos2d::Event* event){
			RBVAL argarr=rb_array_new_brige();
			RBVAL argTouch=rbb_get_or_create_value<cocos2d::Touch>(touch);
			RBVAL argEvent=rbb_get_or_create_value<cocos2d::Event>(event);
			rb_array_push_bridge(argarr,argTouch);
			rb_array_push_bridge(argarr,argEvent);
			RBVAL resultVal=rb_proc_call_bridge(rbproc, argarr);
			bool result=false;
			rb_value_to_bool(resultVal,&result);
			return result;
		};
		return RBNil();
	}
	rb_raise_arg_error("rb_cocos2dx_EventListenerTouchOneByOne_set_onTouchBegan : wrong number of arguments");
	return RBNil();
}

//////////////////////////////////////////////////////////////////////////////
//copy and paste

RBVAL rb_cocos2dx_EventListenerTouchOneByOne_set_onTouchMoved(int argc, RBVAL *argv, RBVAL self){
	if (argc == 1) {
		bool ok = true;
		cocos2d::EventListenerTouchOneByOne* cobj = nullptr;
		ok=rb_value_get_ptr(self,&cobj);
		if (!ok) {rb_raise_arg_error("rb_cocos2dx_EventListenerTouchOneByOne_set_onTouchMoved : self ptr is null");return RBNil();}
		rb_ivar_set_bridge(self,SYM_onTouchMoved(),argv[0]);
		RBVAL rbproc= argv[0];
		cobj->onTouchMoved=[rbproc](cocos2d::Touch* touch, cocos2d::Event* event){
			RBVAL argarr=rb_array_new_brige();
			RBVAL argTouch=rbb_get_or_create_value<cocos2d::Touch>(touch);
			RBVAL argEvent=rbb_get_or_create_value<cocos2d::Event>(event);
			rb_array_push_bridge(argarr,argTouch);
			rb_array_push_bridge(argarr,argEvent);
			rb_proc_call_bridge(rbproc, argarr);
		};
		return RBNil();
	}
	rb_raise_arg_error("rb_cocos2dx_EventListenerTouchOneByOne_set_onTouchMoved : wrong number of arguments");
	return RBNil();
}

RBVAL rb_cocos2dx_EventListenerTouchOneByOne_set_onTouchEnded(int argc, RBVAL *argv, RBVAL self){
	if (argc == 1) {
		bool ok = true;
		cocos2d::EventListenerTouchOneByOne* cobj = nullptr;
		ok=rb_value_get_ptr(self,&cobj);
		if (!ok) {rb_raise_arg_error("rb_cocos2dx_EventListenerTouchOneByOne_set_onTouchEnded : self ptr is null");return RBNil();}
		rb_ivar_set_bridge(self,SYM_onTouchEnded(),argv[0]);
		RBVAL rbproc= argv[0];
		cobj->onTouchEnded=[rbproc](cocos2d::Touch* touch, cocos2d::Event* event){
			RBVAL argarr=rb_array_new_brige();
			RBVAL argTouch=rbb_get_or_create_value<cocos2d::Touch>(touch);
			RBVAL argEvent=rbb_get_or_create_value<cocos2d::Event>(event);
			rb_array_push_bridge(argarr,argTouch);
			rb_array_push_bridge(argarr,argEvent);
			rb_proc_call_bridge(rbproc, argarr);
		};
		return RBNil();
	}
	rb_raise_arg_error("rb_cocos2dx_EventListenerTouchOneByOne_set_onTouchEnded : wrong number of arguments");
	return RBNil();
}

RBVAL rb_cocos2dx_EventListenerTouchOneByOne_set_onTouchCancelled(int argc, RBVAL *argv, RBVAL self){
	if (argc == 1) {
		bool ok = true;
		cocos2d::EventListenerTouchOneByOne* cobj = nullptr;
		ok=rb_value_get_ptr(self,&cobj);
		if (!ok) {rb_raise_arg_error("rb_cocos2dx_EventListenerTouchOneByOne_set_onTouchCancelled : self ptr is null");return RBNil();}
		rb_ivar_set_bridge(self,SYM_onTouchCancelled(),argv[0]);
		RBVAL rbproc= argv[0];
		cobj->onTouchCancelled=[rbproc](cocos2d::Touch* touch, cocos2d::Event* event){
			RBVAL argarr=rb_array_new_brige();
			RBVAL argTouch=rbb_get_or_create_value<cocos2d::Touch>(touch);
			RBVAL argEvent=rbb_get_or_create_value<cocos2d::Event>(event);
			rb_array_push_bridge(argarr,argTouch);
			rb_array_push_bridge(argarr,argEvent);
			rb_proc_call_bridge(rbproc, argarr);
		};
		return RBNil();
	}
	rb_raise_arg_error("rb_cocos2dx_EventListenerTouchOneByOne_set_onTouchCancelled : wrong number of arguments");
	return RBNil();
}

//////////////////////////////////////////////////////////////////////////////

void rb_register_cocos2dx_EventListenerTouchOneByOne_setters(){
		RBVAL classValue=rb_get_class_value("cocos2d::EventListenerTouchOneByOne");
		rb_define_method_bridge(classValue,"setOnTouchBegan",RB_FUNC(rb_cocos2dx_EventListenerTouchOneByOne_set_onTouchBegan));
		rb_define_method_bridge(classValue,"onTouchBegan=",RB_FUNC(rb_cocos2dx_EventListenerTouchOneByOne_set_onTouchBegan));
		rb_define_method_bridge(classValue,"setOnTouchMoved",RB_FUNC(rb_cocos2dx_EventListenerTouchOneByOne_set_onTouchMoved));
		rb_define_method_bridge(classValue,"onTouchMoved=",RB_FUNC(rb_cocos2dx_EventListenerTouchOneByOne_set_onTouchMoved));
		rb_define_method_bridge(classValue,"setOnTouchEnded",RB_FUNC(rb_cocos2dx_EventListenerTouchOneByOne_set_onTouchEnded));
		rb_define_method_bridge(classValue,"onTouchEnded=",RB_FUNC(rb_cocos2dx_EventListenerTouchOneByOne_set_onTouchEnded));
		rb_define_method_bridge(classValue,"setOnTouchCancelled",RB_FUNC(rb_cocos2dx_EventListenerTouchOneByOne_set_onTouchCancelled));
		rb_define_method_bridge(classValue,"onTouchCancelled=",RB_FUNC(rb_cocos2dx_EventListenerTouchOneByOne_set_onTouchCancelled));
}

RBVAL rb_cocos2dx_EventListenerTouchAllAtOnce_set_onTouchBegan(int argc, RBVAL *argv, RBVAL self){
	if (argc == 1) {
		bool ok = true;
		cocos2d::EventListenerTouchAllAtOnce* cobj = nullptr;
		ok=rb_value_get_ptr(self,&cobj);
		if (!ok) {rb_raise_arg_error("rb_cocos2dx_EventListenerTouchAllAtOnce_set_onTouchBegan : self ptr is null");return RBNil();}
		rb_ivar_set_bridge(self,SYM_onTouchBegan(),argv[0]);
		RBVAL rbproc= argv[0];
		cobj->onTouchesBegan=[rbproc](const std::vector<cocos2d::Touch*> touches, cocos2d::Event* event){
			RBVAL argarr=rb_array_new_brige();
			RBVAL argEvent=rbb_get_or_create_value<cocos2d::Event>(event);
			rb_array_push_bridge(argarr,argEvent);
			for (auto iter = touches.begin(); iter != touches.end(); ++iter)
			{
				RBVAL argTouch=rbb_get_or_create_value<cocos2d::Touch>(*iter);
				rb_array_push_bridge(argarr,argTouch);
			}
			rb_proc_call_bridge(rbproc, argarr);
		};
		return RBNil();
	}
	rb_raise_arg_error("rb_cocos2dx_EventListenerTouchAllAtOnce_set_onTouchBegan : wrong number of arguments");
	return RBNil();
}

//////////////////////////////////////////////////////////////////////////////
//copy and paste

RBVAL rb_cocos2dx_EventListenerTouchAllAtOnce_set_onTouchMoved(int argc, RBVAL *argv, RBVAL self){
	if (argc == 1) {
		bool ok = true;
		cocos2d::EventListenerTouchAllAtOnce* cobj = nullptr;
		ok=rb_value_get_ptr(self,&cobj);
		if (!ok) {rb_raise_arg_error("rb_cocos2dx_EventListenerTouchAllAtOnce_set_onTouchMoved : self ptr is null");return RBNil();}
		rb_ivar_set_bridge(self,SYM_onTouchMoved(),argv[0]);
		RBVAL rbproc= argv[0];
		cobj->onTouchesMoved=[rbproc](const std::vector<cocos2d::Touch*> touches, cocos2d::Event* event){
			RBVAL argarr=rb_array_new_brige();
			RBVAL argEvent=rbb_get_or_create_value<cocos2d::Event>(event);
			rb_array_push_bridge(argarr,argEvent);
			for (auto iter = touches.begin(); iter != touches.end(); ++iter)
			{
				RBVAL argTouch=rbb_get_or_create_value<cocos2d::Touch>(*iter);
				rb_array_push_bridge(argarr,argTouch);
			}
			rb_proc_call_bridge(rbproc, argarr);
		};
		return RBNil();
	}
	rb_raise_arg_error("rb_cocos2dx_EventListenerTouchAllAtOnce_set_onTouchMoved : wrong number of arguments");
	return RBNil();
}

RBVAL rb_cocos2dx_EventListenerTouchAllAtOnce_set_onTouchEnded(int argc, RBVAL *argv, RBVAL self){
	if (argc == 1) {
		bool ok = true;
		cocos2d::EventListenerTouchAllAtOnce* cobj = nullptr;
		ok=rb_value_get_ptr(self,&cobj);
		if (!ok) {rb_raise_arg_error("rb_cocos2dx_EventListenerTouchAllAtOnce_set_onTouchMoved : self ptr is null");return RBNil();}
		rb_ivar_set_bridge(self,SYM_onTouchEnded(),argv[0]);
		RBVAL rbproc= argv[0];
		cobj->onTouchesEnded=[rbproc](const std::vector<cocos2d::Touch*> touches, cocos2d::Event* event){
			RBVAL argarr=rb_array_new_brige();
			RBVAL argEvent=rbb_get_or_create_value<cocos2d::Event>(event);
			rb_array_push_bridge(argarr,argEvent);
			for (auto iter = touches.begin(); iter != touches.end(); ++iter)
			{
				RBVAL argTouch=rbb_get_or_create_value<cocos2d::Touch>(*iter);
				rb_array_push_bridge(argarr,argTouch);
			}
			rb_proc_call_bridge(rbproc, argarr);
		};
		return RBNil();
	}
	rb_raise_arg_error("rb_cocos2dx_EventListenerTouchAllAtOnce_set_onTouchMoved : wrong number of arguments");
	return RBNil();
}


RBVAL rb_cocos2dx_EventListenerTouchAllAtOnce_set_onTouchCancelled(int argc, RBVAL *argv, RBVAL self){
	if (argc == 1) {
		bool ok = true;
		cocos2d::EventListenerTouchAllAtOnce* cobj = nullptr;
		ok=rb_value_get_ptr(self,&cobj);
		if (!ok) {rb_raise_arg_error("rb_cocos2dx_EventListenerTouchAllAtOnce_set_onTouchCancelled : self ptr is null");return RBNil();}
		rb_ivar_set_bridge(self,SYM_onTouchCancelled(),argv[0]);
		RBVAL rbproc= argv[0];
		cobj->onTouchesCancelled=[rbproc](const std::vector<cocos2d::Touch*> touches, cocos2d::Event* event){
			RBVAL argarr=rb_array_new_brige();
			RBVAL argEvent=rbb_get_or_create_value<cocos2d::Event>(event);
			rb_array_push_bridge(argarr,argEvent);
			for (auto iter = touches.begin(); iter != touches.end(); ++iter)
			{
				RBVAL argTouch=rbb_get_or_create_value<cocos2d::Touch>(*iter);
				rb_array_push_bridge(argarr,argTouch);
			}
			rb_proc_call_bridge(rbproc, argarr);
		};
		return RBNil();
	}
	rb_raise_arg_error("rb_cocos2dx_EventListenerTouchAllAtOnce_set_onTouchCancelled : wrong number of arguments");
	return RBNil();
}

//////////////////////////////////////////////////////////////////////////////

void rb_register_cocos2dx_EventListenerTouchAllAtOnce_setters(){
		RBVAL classValue=rb_get_class_value("cocos2d::EventListenerTouchAllAtOnce");
		rb_define_method_bridge(classValue,"setOnTouchesBegan",RB_FUNC(rb_cocos2dx_EventListenerTouchAllAtOnce_set_onTouchBegan));
		rb_define_method_bridge(classValue,"onTouchesBegan=",RB_FUNC(rb_cocos2dx_EventListenerTouchAllAtOnce_set_onTouchBegan));
		rb_define_method_bridge(classValue,"setOnTouchesMoved",RB_FUNC(rb_cocos2dx_EventListenerTouchAllAtOnce_set_onTouchMoved));
		rb_define_method_bridge(classValue,"onTouchesMoved=",RB_FUNC(rb_cocos2dx_EventListenerTouchAllAtOnce_set_onTouchMoved));
		rb_define_method_bridge(classValue,"setOnTouchesEnded",RB_FUNC(rb_cocos2dx_EventListenerTouchAllAtOnce_set_onTouchEnded));
		rb_define_method_bridge(classValue,"onTouchesEnded=",RB_FUNC(rb_cocos2dx_EventListenerTouchAllAtOnce_set_onTouchEnded));
		rb_define_method_bridge(classValue,"setOnTouchesCancelled",RB_FUNC(rb_cocos2dx_EventListenerTouchAllAtOnce_set_onTouchCancelled));
		rb_define_method_bridge(classValue,"onTouchesCancelled=",RB_FUNC(rb_cocos2dx_EventListenerTouchAllAtOnce_set_onTouchCancelled));
}

RBVAL rb_cocos2dx_Menu_create(int argc, RBVAL *argv, RBVAL clazz)
{
	bool ok = true;
	
	do {
		if (argc == 0) {
			cocos2d::Menu* ret = cocos2d::Menu::create();
			RBVAL value=RBNil();
				if (ret) {
					value = rbb_get_or_create_value<cocos2d::Menu>(ret);
				} else {
					value = RBNil();
				};
			return value;
		}
	} while (0);

	rb_raise_arg_error("rb_cocos2dx_MenuItemImage_create : wrong number of arguments");
	return RBNil();
}

RBVAL rb_cocos2dx_Menu_createWithItem(int argc, RBVAL *argv, RBVAL clazz)
{
	bool ok = true;
	
	do {
		if (argc == 1) {
			cocos2d::MenuItem * arg0=NULL;
			ok &= rb_value_get_ptr(argv[0],&arg0);
			if (!ok) {rb_raise_arg_error("rb_cocos2dx_Menu_createWithItem : Error processing arguments");return RBNil();}
			cocos2d::Menu* ret = cocos2d::Menu::createWithItem(arg0);
			RBVAL value=RBNil();
				if (ret) {
					value = rbb_get_or_create_value<cocos2d::Menu>(ret);
				} else {
					value = RBNil();
				};
			return value;
		}
	} while (0);

	rb_raise_arg_error("rb_cocos2dx_Menu_createWithItem : wrong number of arguments");
	return RBNil();
}

RBVAL rb_cocos2dx_MenuItemImage_create(int argc, RBVAL *argv, RBVAL clazz)
{
	bool ok = true;
	
	do {
		if (argc == 0) {
			cocos2d::MenuItemImage* ret = cocos2d::MenuItemImage::create();
			RBVAL value=RBNil();
				if (ret) {
					value = rbb_get_or_create_value<cocos2d::MenuItemImage>(ret);
				} else {
					value = RBNil();
				};
			return value;
		}
	} while (0);
	
	do {
		if (argc == 2) {
			std::string arg0;
			ok &= rb_value_to_std_string(argv[0], &arg0);
			if (!ok) { break; }
			std::string arg1;
			ok &= rb_value_to_std_string(argv[1], &arg1);
			if (!ok) { break; }
			cocos2d::MenuItemImage* ret = cocos2d::MenuItemImage::create(arg0,arg1);
			RBVAL value=RBNil();
				if (ret) {
					value = rbb_get_or_create_value<cocos2d::MenuItemImage>(ret);
				} else {
					value = RBNil();
				};
			return value;
		}
	} while (0);

	do {
		if (argc == 3) {
			std::string arg0;
			ok &= rb_value_to_std_string(argv[0], &arg0);
			if (!ok) { break; }
			std::string arg1;
			ok &= rb_value_to_std_string(argv[1], &arg1);
			if (!ok) { break; }
			std::string arg2;
			ok &= rb_value_to_std_string(argv[2], &arg2);
			if (!ok) { break; }
			cocos2d::MenuItemImage* ret = cocos2d::MenuItemImage::create(arg0,arg1,arg2);
			RBVAL value=RBNil();
				if (ret) {
					value = rbb_get_or_create_value<cocos2d::MenuItemImage>(ret);
				} else {
					value = RBNil();
				};
			return value;
		}
	} while (0);

	rb_raise_arg_error("rb_cocos2dx_MenuItemImage_create : wrong number of arguments");
	return RBNil();
}


void rb_register_cocos2dx_menuitem_create(){
	RBVAL menuClassValue=rb_get_class_value("cocos2d::Menu");
	rb_define_singleton_method_bridge(menuClassValue,"create",RB_FUNC(rb_cocos2dx_Menu_create));
	rb_define_singleton_method_bridge(menuClassValue,"createWithItem",RB_FUNC(rb_cocos2dx_Menu_createWithItem));
	RBVAL menuItemImageClassValue=rb_get_class_value("cocos2d::MenuItemImage");
	rb_define_singleton_method_bridge(menuItemImageClassValue,"create",RB_FUNC(rb_cocos2dx_MenuItemImage_create));
}

RBVAL rb_cocos2dx_Director_end(int argc, RBVAL *argv, RBVAL self)
{
	bool ok = true;
	cocos2d::Director* cobj = nullptr;
	ok=rb_value_get_ptr(self,&cobj);
	if (!ok) {rb_raise_arg_error("rb_cocos2dx_Director_end : self ptr is null");return RBNil();}
    if (argc == 0) {
        RBVAL value = RBNil();
        cobj->end();
#if (CC_TARGET_PLATFORM == CC_PLATFORM_IOS)
        exit(0);
#endif
		return value;
    }
    
	rb_raise_arg_error("rb_cocos2dx_Director_end : wrong number of arguments");
	return RBNil();
}

extern "C" RBVAL rb_eval_script_string(const char *scriptString,const char * scriptPath);

RBVAL rb_f_require_fix(RBVAL obj, RBVAL fname)
{
	bool ok=true;
	const char * filename=rb_string_to_char_ptr(fname,ok);
	if (!ok) return RBNil();

	std::string fullPath = cocos2d::CCFileUtils::getInstance()->fullPathForFilename(filename);	
	std::string script(cocos2d::CCFileUtils::getInstance()->getStringFromFile(fullPath));	
	return rb_eval_script_string(script.c_str(),filename);
}

void manual_implement(){
	rb_register_tools_class();
	rb_register_cocos2dx_LayerWithInit();
	rb_register_cocos2dx_EventListenerTouchOneByOne_setters();
	rb_register_cocos2dx_EventListenerTouchAllAtOnce_setters();
	RBVAL menu_item_class=rb_get_class_value("cocos2d::MenuItem");
	rb_define_attr_bridge(menu_item_class,"onClicked");
	RBVAL director_class=rb_get_class_value("cocos2d::Director");
    rb_define_method_bridge(director_class,"endDirector",RB_FUNC(rb_cocos2dx_Director_end));
	rb_register_cocos2dx_menuitem_create();

	rb_define_global_function_bridge("require_fix",RB_FUNC(rb_f_require_fix),1);
}