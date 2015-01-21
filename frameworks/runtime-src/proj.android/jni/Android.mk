LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2druby_shared

LOCAL_MODULE_FILENAME := libcocos2druby

LOCAL_SRC_FILES := helloruby/main.cpp \
                   ../../Classes/AppDelegate.cpp


LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes
					
LOCAL_STATIC_LIBRARIES := cocos2d_ruby_static

include $(BUILD_SHARED_LIBRARY)

$(call import-module,scripting/ruby-bindings/proj.android)
