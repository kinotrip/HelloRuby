#ifndef __cocos2dx_audioengine_h__
#define __cocos2dx_audioengine_h__

#include "RubyBridge.h"

void rb_register_cocos2dx_audioengine_AudioEngine();
RBVAL rb_cocos2dx_audioengine_AudioEngine_lazyInit(int argc, RBVAL *argv, RBVAL klass);
RBVAL rb_cocos2dx_audioengine_AudioEngine_setCurrentTime(int argc, RBVAL *argv, RBVAL klass);
RBVAL rb_cocos2dx_audioengine_AudioEngine_getVolume(int argc, RBVAL *argv, RBVAL klass);
RBVAL rb_cocos2dx_audioengine_AudioEngine_uncache(int argc, RBVAL *argv, RBVAL klass);
RBVAL rb_cocos2dx_audioengine_AudioEngine_resumeAll(int argc, RBVAL *argv, RBVAL klass);
RBVAL rb_cocos2dx_audioengine_AudioEngine_stopAll(int argc, RBVAL *argv, RBVAL klass);
RBVAL rb_cocos2dx_audioengine_AudioEngine_pause(int argc, RBVAL *argv, RBVAL klass);
RBVAL rb_cocos2dx_audioengine_AudioEngine_end(int argc, RBVAL *argv, RBVAL klass);
RBVAL rb_cocos2dx_audioengine_AudioEngine_getMaxAudioInstance(int argc, RBVAL *argv, RBVAL klass);
RBVAL rb_cocos2dx_audioengine_AudioEngine_getCurrentTime(int argc, RBVAL *argv, RBVAL klass);
RBVAL rb_cocos2dx_audioengine_AudioEngine_setMaxAudioInstance(int argc, RBVAL *argv, RBVAL klass);
RBVAL rb_cocos2dx_audioengine_AudioEngine_isLoop(int argc, RBVAL *argv, RBVAL klass);
RBVAL rb_cocos2dx_audioengine_AudioEngine_pauseAll(int argc, RBVAL *argv, RBVAL klass);
RBVAL rb_cocos2dx_audioengine_AudioEngine_uncacheAll(int argc, RBVAL *argv, RBVAL klass);
RBVAL rb_cocos2dx_audioengine_AudioEngine_setVolume(int argc, RBVAL *argv, RBVAL klass);
RBVAL rb_cocos2dx_audioengine_AudioEngine_play2d(int argc, RBVAL *argv, RBVAL klass);
RBVAL rb_cocos2dx_audioengine_AudioEngine_getState(int argc, RBVAL *argv, RBVAL klass);
RBVAL rb_cocos2dx_audioengine_AudioEngine_resume(int argc, RBVAL *argv, RBVAL klass);
RBVAL rb_cocos2dx_audioengine_AudioEngine_stop(int argc, RBVAL *argv, RBVAL klass);
RBVAL rb_cocos2dx_audioengine_AudioEngine_getDuration(int argc, RBVAL *argv, RBVAL klass);
RBVAL rb_cocos2dx_audioengine_AudioEngine_setLoop(int argc, RBVAL *argv, RBVAL klass);

void register_all_cocos2dx_audioengine();
#endif

