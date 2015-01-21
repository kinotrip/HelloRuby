#include "ruby_cocos2dx_audioengine_auto.hpp"

#include "RubyValueMap.h"
#include "BindingHelper.h"

#include "AudioEngine.h"
RBVAL rb_cocos2dx_audioengine_AudioEngine_lazyInit(int argc, RBVAL *argv, RBVAL clazz)
{
	if (argc == 0) {
		bool ret = cocos2d::experimental::AudioEngine::lazyInit();
		RBVAL value=RBNil();
		value = bool_to_rb_value(ret);
		return value;
	}
	rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_lazyInit : wrong number of arguments");
	return RBNil();
}

RBVAL rb_cocos2dx_audioengine_AudioEngine_setCurrentTime(int argc, RBVAL *argv, RBVAL clazz)
{
	bool ok = true;
	if (argc == 2) {
		int arg0;
		float arg1;
		ok &= rb_value_to_int(argv[0], (int *)&arg0);
		ok &= rb_value_to_float(argv[1], &arg1);
			if (!ok) {rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_setCurrentTime : Error processing arguments");return RBNil();}
		bool ret = cocos2d::experimental::AudioEngine::setCurrentTime(arg0, arg1);
		RBVAL value=RBNil();
		value = bool_to_rb_value(ret);
		return value;
	}
	rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_setCurrentTime : wrong number of arguments");
	return RBNil();
}

RBVAL rb_cocos2dx_audioengine_AudioEngine_getVolume(int argc, RBVAL *argv, RBVAL clazz)
{
	bool ok = true;
	if (argc == 1) {
		int arg0;
		ok &= rb_value_to_int(argv[0], (int *)&arg0);
			if (!ok) {rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_getVolume : Error processing arguments");return RBNil();}
		float ret = cocos2d::experimental::AudioEngine::getVolume(arg0);
		RBVAL value=RBNil();
		value = float_to_rb_value(ret);
		return value;
	}
	rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_getVolume : wrong number of arguments");
	return RBNil();
}

RBVAL rb_cocos2dx_audioengine_AudioEngine_uncache(int argc, RBVAL *argv, RBVAL clazz)
{
	bool ok = true;
	if (argc == 1) {
		std::string arg0;
		ok &= rb_value_to_std_string(argv[0], &arg0);
			if (!ok) {rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_uncache : Error processing arguments");return RBNil();}
		cocos2d::experimental::AudioEngine::uncache(arg0);
		RBVAL value=RBNil();
		return value;
	}
	rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_uncache : wrong number of arguments");
	return RBNil();
}

RBVAL rb_cocos2dx_audioengine_AudioEngine_resumeAll(int argc, RBVAL *argv, RBVAL clazz)
{
	if (argc == 0) {
		cocos2d::experimental::AudioEngine::resumeAll();
		RBVAL value=RBNil();
		return value;
	}
	rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_resumeAll : wrong number of arguments");
	return RBNil();
}

RBVAL rb_cocos2dx_audioengine_AudioEngine_stopAll(int argc, RBVAL *argv, RBVAL clazz)
{
	if (argc == 0) {
		cocos2d::experimental::AudioEngine::stopAll();
		RBVAL value=RBNil();
		return value;
	}
	rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_stopAll : wrong number of arguments");
	return RBNil();
}

RBVAL rb_cocos2dx_audioengine_AudioEngine_pause(int argc, RBVAL *argv, RBVAL clazz)
{
	bool ok = true;
	if (argc == 1) {
		int arg0;
		ok &= rb_value_to_int(argv[0], (int *)&arg0);
			if (!ok) {rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_pause : Error processing arguments");return RBNil();}
		cocos2d::experimental::AudioEngine::pause(arg0);
		RBVAL value=RBNil();
		return value;
	}
	rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_pause : wrong number of arguments");
	return RBNil();
}

RBVAL rb_cocos2dx_audioengine_AudioEngine_end(int argc, RBVAL *argv, RBVAL clazz)
{
	if (argc == 0) {
		cocos2d::experimental::AudioEngine::end();
		RBVAL value=RBNil();
		return value;
	}
	rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_end : wrong number of arguments");
	return RBNil();
}

RBVAL rb_cocos2dx_audioengine_AudioEngine_getMaxAudioInstance(int argc, RBVAL *argv, RBVAL clazz)
{
	if (argc == 0) {
		int ret = cocos2d::experimental::AudioEngine::getMaxAudioInstance();
		RBVAL value=RBNil();
		value = int_to_rb_value(ret);
		return value;
	}
	rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_getMaxAudioInstance : wrong number of arguments");
	return RBNil();
}

RBVAL rb_cocos2dx_audioengine_AudioEngine_getCurrentTime(int argc, RBVAL *argv, RBVAL clazz)
{
	bool ok = true;
	if (argc == 1) {
		int arg0;
		ok &= rb_value_to_int(argv[0], (int *)&arg0);
			if (!ok) {rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_getCurrentTime : Error processing arguments");return RBNil();}
		float ret = cocos2d::experimental::AudioEngine::getCurrentTime(arg0);
		RBVAL value=RBNil();
		value = float_to_rb_value(ret);
		return value;
	}
	rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_getCurrentTime : wrong number of arguments");
	return RBNil();
}

RBVAL rb_cocos2dx_audioengine_AudioEngine_setMaxAudioInstance(int argc, RBVAL *argv, RBVAL clazz)
{
	bool ok = true;
	if (argc == 1) {
		int arg0;
		ok &= rb_value_to_int(argv[0], (int *)&arg0);
			if (!ok) {rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_setMaxAudioInstance : Error processing arguments");return RBNil();}
		bool ret = cocos2d::experimental::AudioEngine::setMaxAudioInstance(arg0);
		RBVAL value=RBNil();
		value = bool_to_rb_value(ret);
		return value;
	}
	rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_setMaxAudioInstance : wrong number of arguments");
	return RBNil();
}

RBVAL rb_cocos2dx_audioengine_AudioEngine_isLoop(int argc, RBVAL *argv, RBVAL clazz)
{
	bool ok = true;
	if (argc == 1) {
		int arg0;
		ok &= rb_value_to_int(argv[0], (int *)&arg0);
			if (!ok) {rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_isLoop : Error processing arguments");return RBNil();}
		bool ret = cocos2d::experimental::AudioEngine::isLoop(arg0);
		RBVAL value=RBNil();
		value = bool_to_rb_value(ret);
		return value;
	}
	rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_isLoop : wrong number of arguments");
	return RBNil();
}

RBVAL rb_cocos2dx_audioengine_AudioEngine_pauseAll(int argc, RBVAL *argv, RBVAL clazz)
{
	if (argc == 0) {
		cocos2d::experimental::AudioEngine::pauseAll();
		RBVAL value=RBNil();
		return value;
	}
	rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_pauseAll : wrong number of arguments");
	return RBNil();
}

RBVAL rb_cocos2dx_audioengine_AudioEngine_uncacheAll(int argc, RBVAL *argv, RBVAL clazz)
{
	if (argc == 0) {
		cocos2d::experimental::AudioEngine::uncacheAll();
		RBVAL value=RBNil();
		return value;
	}
	rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_uncacheAll : wrong number of arguments");
	return RBNil();
}

RBVAL rb_cocos2dx_audioengine_AudioEngine_setVolume(int argc, RBVAL *argv, RBVAL clazz)
{
	bool ok = true;
	if (argc == 2) {
		int arg0;
		float arg1;
		ok &= rb_value_to_int(argv[0], (int *)&arg0);
		ok &= rb_value_to_float(argv[1], &arg1);
			if (!ok) {rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_setVolume : Error processing arguments");return RBNil();}
		cocos2d::experimental::AudioEngine::setVolume(arg0, arg1);
		RBVAL value=RBNil();
		return value;
	}
	rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_setVolume : wrong number of arguments");
	return RBNil();
}

RBVAL rb_cocos2dx_audioengine_AudioEngine_play2d(int argc, RBVAL *argv, RBVAL clazz)
{
	bool ok = true;
	if (argc == 1) {
		std::string arg0;
		ok &= rb_value_to_std_string(argv[0], &arg0);
			if (!ok) {rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_play2d : Error processing arguments");return RBNil();}
		int ret = cocos2d::experimental::AudioEngine::play2d(arg0);
		RBVAL value=RBNil();
		value = int_to_rb_value(ret);
		return value;
	}
	if (argc == 2) {
		std::string arg0;
		bool arg1;
		ok &= rb_value_to_std_string(argv[0], &arg0);
		ok &= rb_value_to_bool(argv[1], &arg1);
			if (!ok) {rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_play2d : Error processing arguments");return RBNil();}
		int ret = cocos2d::experimental::AudioEngine::play2d(arg0, arg1);
		RBVAL value=RBNil();
		value = int_to_rb_value(ret);
		return value;
	}
	if (argc == 3) {
		std::string arg0;
		bool arg1;
		float arg2;
		ok &= rb_value_to_std_string(argv[0], &arg0);
		ok &= rb_value_to_bool(argv[1], &arg1);
		ok &= rb_value_to_float(argv[2], &arg2);
			if (!ok) {rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_play2d : Error processing arguments");return RBNil();}
		int ret = cocos2d::experimental::AudioEngine::play2d(arg0, arg1, arg2);
		RBVAL value=RBNil();
		value = int_to_rb_value(ret);
		return value;
	}
	if (argc == 4) {
		std::string arg0;
		bool arg1;
		float arg2;
		const cocos2d::experimental::AudioProfile* arg3;
		ok &= rb_value_to_std_string(argv[0], &arg0);
		ok &= rb_value_to_bool(argv[1], &arg1);
		ok &= rb_value_to_float(argv[2], &arg2);
		ok &= rb_value_get_ptr(argv[3],&arg3);
			if (!ok) {rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_play2d : Error processing arguments");return RBNil();}
		int ret = cocos2d::experimental::AudioEngine::play2d(arg0, arg1, arg2, arg3);
		RBVAL value=RBNil();
		value = int_to_rb_value(ret);
		return value;
	}
	rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_play2d : wrong number of arguments");
	return RBNil();
}

RBVAL rb_cocos2dx_audioengine_AudioEngine_getState(int argc, RBVAL *argv, RBVAL clazz)
{
	bool ok = true;
	if (argc == 1) {
		int arg0;
		ok &= rb_value_to_int(argv[0], (int *)&arg0);
			if (!ok) {rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_getState : Error processing arguments");return RBNil();}
		int ret = (int)cocos2d::experimental::AudioEngine::getState(arg0);
		RBVAL value=RBNil();
		value = int_to_rb_value(ret);
		return value;
	}
	rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_getState : wrong number of arguments");
	return RBNil();
}

RBVAL rb_cocos2dx_audioengine_AudioEngine_resume(int argc, RBVAL *argv, RBVAL clazz)
{
	bool ok = true;
	if (argc == 1) {
		int arg0;
		ok &= rb_value_to_int(argv[0], (int *)&arg0);
			if (!ok) {rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_resume : Error processing arguments");return RBNil();}
		cocos2d::experimental::AudioEngine::resume(arg0);
		RBVAL value=RBNil();
		return value;
	}
	rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_resume : wrong number of arguments");
	return RBNil();
}

RBVAL rb_cocos2dx_audioengine_AudioEngine_stop(int argc, RBVAL *argv, RBVAL clazz)
{
	bool ok = true;
	if (argc == 1) {
		int arg0;
		ok &= rb_value_to_int(argv[0], (int *)&arg0);
			if (!ok) {rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_stop : Error processing arguments");return RBNil();}
		cocos2d::experimental::AudioEngine::stop(arg0);
		RBVAL value=RBNil();
		return value;
	}
	rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_stop : wrong number of arguments");
	return RBNil();
}

RBVAL rb_cocos2dx_audioengine_AudioEngine_getDuration(int argc, RBVAL *argv, RBVAL clazz)
{
	bool ok = true;
	if (argc == 1) {
		int arg0;
		ok &= rb_value_to_int(argv[0], (int *)&arg0);
			if (!ok) {rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_getDuration : Error processing arguments");return RBNil();}
		float ret = cocos2d::experimental::AudioEngine::getDuration(arg0);
		RBVAL value=RBNil();
		value = float_to_rb_value(ret);
		return value;
	}
	rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_getDuration : wrong number of arguments");
	return RBNil();
}

RBVAL rb_cocos2dx_audioengine_AudioEngine_setLoop(int argc, RBVAL *argv, RBVAL clazz)
{
	bool ok = true;
	if (argc == 2) {
		int arg0;
		bool arg1;
		ok &= rb_value_to_int(argv[0], (int *)&arg0);
		ok &= rb_value_to_bool(argv[1], &arg1);
			if (!ok) {rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_setLoop : Error processing arguments");return RBNil();}
		cocos2d::experimental::AudioEngine::setLoop(arg0, arg1);
		RBVAL value=RBNil();
		return value;
	}
	rb_raise_arg_error("rb_cocos2dx_audioengine_AudioEngine_setLoop : wrong number of arguments");
	return RBNil();
}



void rb_register_cocos2dx_audioengine_AudioEngine() {
		
	RBVAL classValue=rb_define_class_bridge("AudioEngine",rb_get_root_class(),true);

	

	rb_define_singleton_method_bridge(classValue,"lazyInit",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_lazyInit));

	
	

	rb_define_singleton_method_bridge(classValue,"setCurrentTime",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_setCurrentTime));

    rb_define_singleton_method_bridge(classValue,"currentTime=",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_setCurrentTime));
	
	

	rb_define_singleton_method_bridge(classValue,"getVolume",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_getVolume));

   rb_define_singleton_method_bridge(classValue,"volume",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_getVolume));
	
	

	rb_define_singleton_method_bridge(classValue,"uncache",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_uncache));

	
	

	rb_define_singleton_method_bridge(classValue,"resumeAll",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_resumeAll));

	
	

	rb_define_singleton_method_bridge(classValue,"stopAll",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_stopAll));

	
	

	rb_define_singleton_method_bridge(classValue,"pause",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_pause));

	
	

	rb_define_singleton_method_bridge(classValue,"end",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_end));

	
	

	rb_define_singleton_method_bridge(classValue,"getMaxAudioInstance",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_getMaxAudioInstance));

   rb_define_singleton_method_bridge(classValue,"maxAudioInstance",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_getMaxAudioInstance));
	
	

	rb_define_singleton_method_bridge(classValue,"getCurrentTime",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_getCurrentTime));

   rb_define_singleton_method_bridge(classValue,"currentTime",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_getCurrentTime));
	
	

	rb_define_singleton_method_bridge(classValue,"setMaxAudioInstance",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_setMaxAudioInstance));

    rb_define_singleton_method_bridge(classValue,"maxAudioInstance=",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_setMaxAudioInstance));
	
	

	rb_define_singleton_method_bridge(classValue,"isLoop",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_isLoop));

	
	

	rb_define_singleton_method_bridge(classValue,"pauseAll",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_pauseAll));

	
	

	rb_define_singleton_method_bridge(classValue,"uncacheAll",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_uncacheAll));

	
	

	rb_define_singleton_method_bridge(classValue,"setVolume",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_setVolume));

    rb_define_singleton_method_bridge(classValue,"volume=",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_setVolume));
	
	

	rb_define_singleton_method_bridge(classValue,"play2d",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_play2d));

	
	

	rb_define_singleton_method_bridge(classValue,"getState",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_getState));

   rb_define_singleton_method_bridge(classValue,"state",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_getState));
	
	

	rb_define_singleton_method_bridge(classValue,"resume",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_resume));

	
	

	rb_define_singleton_method_bridge(classValue,"stop",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_stop));

	
	

	rb_define_singleton_method_bridge(classValue,"getDuration",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_getDuration));

   rb_define_singleton_method_bridge(classValue,"duration",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_getDuration));
	
	

	rb_define_singleton_method_bridge(classValue,"setLoop",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_setLoop));

    rb_define_singleton_method_bridge(classValue,"loop=",RB_FUNC(rb_cocos2dx_audioengine_AudioEngine_setLoop));
	


	TypeTest<cocos2d::experimental::AudioEngine> t;
	std::string typeName = t.s_name();
	rbb_register_class_value(typeName,classValue);
	rbb_register_class_value("cocos2d::experimental::AudioEngine",classValue);
}

void register_all_cocos2dx_audioengine() {
	rb_register_cocos2dx_audioengine_AudioEngine();
}