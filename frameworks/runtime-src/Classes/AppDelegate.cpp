#include "AppDelegate.h"
//#include "CCLuaEngine.h"
#include "CCRubyEngine.h"
#include "SimpleAudioEngine.h"
#include "cocos2d.h"
//#include "lua_module_register.h"

using namespace CocosDenshion;

USING_NS_CC;
using namespace std;

AppDelegate::AppDelegate()
{
}

AppDelegate::~AppDelegate()
{
    SimpleAudioEngine::end();
}

//if you want a different context,just modify the value of glContextAttrs
//it will takes effect on all platforms
void AppDelegate::initGLContextAttrs()
{
    //set OpenGL context attributions,now can only set six attributions:
    //red,green,blue,alpha,depth,stencil
    GLContextAttrs glContextAttrs = {8, 8, 8, 8, 24, 8};

    GLView::setGLContextAttrs(glContextAttrs);
}

bool AppDelegate::applicationDidFinishLaunching()
{
    auto engine = RubyEngine::getInstance();
    ScriptEngineManager::getInstance()->setScriptEngine(engine);

	// initialize director
    auto director = Director::getInstance();
    auto glview = director->getOpenGLView();
    if(!glview) {
        glview = GLViewImpl::create("My Game");
        director->setOpenGLView(glview);
    }

    // turn on display FPS
    director->setDisplayStats(true);
    
    // set FPS. the default value is 1.0/60 if you don't call this
    director->setAnimationInterval(1.0 / 60);
	
		/*
    std::string fullPath = cocos2d::CCFileUtils::getInstance()->fullPathForFilename("src/start.rb");
    std::string  base_dir=fullPath;
    base_dir=base_dir.substr(0,base_dir.length()-strlen("src/start.rb"));
    std::string command="Dir.chdir \"";
    command=command+base_dir;
    command=command+"\"";
//    log(command.c_str());
    engine->executeString(command.c_str());
    */
    
    engine->executeScriptFile("src/start.rb");

    return true;
}

// This function will be called when the app is inactive. When comes a phone call,it's be invoked too
void AppDelegate::applicationDidEnterBackground()
{
    Director::getInstance()->stopAnimation();

    SimpleAudioEngine::getInstance()->pauseBackgroundMusic();
}

// this function will be called when the app is active again
void AppDelegate::applicationWillEnterForeground()
{
    Director::getInstance()->startAnimation();

    SimpleAudioEngine::getInstance()->resumeBackgroundMusic();
}
