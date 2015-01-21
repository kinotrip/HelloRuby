#include "CCRubyEngine.h"
#include "RubyBridge.h"
#include "ruby_cocos2dx_auto.hpp"
#include "ruby_cocos2dx_audioengine_auto.hpp"
#include "ManualImplement.h"
#include "RubyValueMap.h"

NS_CC_BEGIN

RubyEngine* RubyEngine::_defaultEngine = nullptr;

RubyEngine* RubyEngine::getInstance(void)
{
    if (!_defaultEngine)
    {
        _defaultEngine = new (std::nothrow) RubyEngine();
        //_defaultEngine->init();
    }
    return _defaultEngine;
}

RubyEngine::RubyEngine(void)
{
	_init_Ruby_VM();
	register_all_cocos2dx();
	register_all_cocos2dx_audioengine();
	manual_implement();
    
    
    
}


RubyEngine::~RubyEngine(void)
{
	_defaultEngine=nullptr;
}

int RubyEngine::handleMenuClickedEvent(void* data)
{
    if (NULL == data)
        return 0;
    
    BasicScriptData* basicScriptData = (BasicScriptData*)data;
    if (NULL == basicScriptData->nativeObject)
        return 0;
        
    MenuItem* menuItem = static_cast<MenuItem*>(basicScriptData->nativeObject);
	RBVAL menuItemValue=rbb_get_or_create_value<cocos2d::MenuItem>(menuItem);
	RBVAL onClicked=rb_ivar_get_bridge(menuItemValue,ATID_onClicked());
	if (onClicked!=RBNil()){
		RBVAL resultVal=rb_proc_call_protected(onClicked);
		int result=0;
		rb_value_to_int(resultVal,&result);
		return result;
	}
	return 0;
}

int RubyEngine::sendEvent(ScriptEvent* evt){
 if (NULL == evt)
        return 0;
    
    switch (evt->type)
    {
        case kMenuClickedEvent:
            {
                return handleMenuClickedEvent(evt->data);
            }
            break;
        default:
            break;
    }
    
    return 0;
}

int RubyEngine::executeString(const char* codes) { 
	return _ruby_executeString(codes);
} 

int RubyEngine::executeScriptFile(const char* filename) {
	std::string cmd("require_fix \"");
	cmd.append(filename);
	cmd.append("\"");
	return executeString(cmd.c_str());
}


NS_CC_END