LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := cocos2d_ruby_static

LOCAL_MODULE_FILENAME := librubycocos2d

LOCAL_SRC_FILES := ../manual/RubyBridge.cpp \
          ../manual/CCRubyEngine.cpp \
          ../manual/RubyValueMap.cpp \
          ../manual/BindingHelper.cpp \
          ../auto/ruby_cocos2dx_auto.cpp \
          ../auto/ruby_cocos2dx_audioengine_auto.cpp \
          ../manual/ManualImplement.cpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../auto \
                    $(LOCAL_PATH)/../manual \
                    $(LOCAL_PATH)/../../../../../ruby/ruby/include \
                    $(LOCAL_PATH)/../../../../../ruby/ruby/android

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../auto \
                           $(LOCAL_PATH)/../manual

LOCAL_STATIC_LIBRARIES := cocos2dx_static
LOCAL_STATIC_LIBRARIES += ruby

include $(BUILD_STATIC_LIBRARY)

$(call import-module,../../ruby/ruby)
$(call import-module,.)
