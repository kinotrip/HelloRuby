#ifndef __CC_RUBY_ENGINE_H__
#define __CC_RUBY_ENGINE_H__

#include "cocos2d.h"

NS_CC_BEGIN

class RubyEngine : public ScriptEngineProtocol
{
public:
    static RubyEngine* getInstance(void);
	virtual ~RubyEngine(void);
	virtual ccScriptType getScriptType() { return kScriptTypeRuby; }
	virtual void removeScriptObjectByObject(Ref* obj){}
	virtual int executeString(const char* codes);
	virtual int executeScriptFile(const char* filename);
	virtual int executeGlobalFunction(const char* functionName) { return 0; }
	int handleMenuClickedEvent(void* data);
	virtual int sendEvent(ScriptEvent* evt);
	virtual bool handleAssert(const char *msg) {return false;}
	virtual bool parseConfig(ConfigType type, const std::string& str){return true;}
private:
	RubyEngine();
private:
    static RubyEngine* _defaultEngine;
};

NS_CC_END

#endif