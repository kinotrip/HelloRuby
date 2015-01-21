#ifndef  _BINDING_HELPER_H_
#define  _BINDING_HELPER_H_

#include "RubyBridge.h"
#include <string>
#include "cocos2d.h"
#include "RubyValueMap.h"


extern "C" void _printf_from_ruby(const char * info);


bool rb_value_to_std_string(RBVAL value,std::string* target);
bool rb_value_to_ccpoint(RBVAL value,cocos2d::Point* point);
bool rb_value_to_ccrect(RBVAL value,cocos2d::Rect* rect);
bool rb_value_to_ccsize(RBVAL value,cocos2d::Size* size);
bool rb_value_to_cccolor4b(RBVAL value,cocos2d::Color4B* color);
bool rb_value_to_cccolor4f(RBVAL value,cocos2d::Color4F* color);
bool rb_value_to_cccolor3b(RBVAL value,cocos2d::Color3B* color);
bool rb_value_to_ccaffinetransform(RBVAL value,cocos2d::AffineTransform * transform);
bool rb_value_to_FontDefinition(RBVAL value,cocos2d::FontDefinition * fontDefinition);

bool rb_value_to_vec2(RBVAL value,cocos2d::Vec2 *vec2);
bool rb_value_to_vec3(RBVAL value,cocos2d::Vec3 *vec3);
bool rb_value_to_vec4(RBVAL value,cocos2d::Vec4 *vec4);
bool rb_value_to_mat4(RBVAL value,cocos2d::Mat4 *mat4);

template <class T>
bool rb_value_to_ccvector(RBVAL value, cocos2d::Vector<T>* target)
{
	if (!rb_value_is_array(value)) return false;
	unsigned int size=rb_array_size(value);
	for(unsigned int i=0;i<size;i++){
		RBVAL current=rb_array_entry(value,i);
		T cobj=(T)rbb_get_ptr(current);
		if (cobj){
			target->pushBack(cobj);
		}
	}
	return true;
}

RBVAL std_string_to_rb_value(const std::string& target);
RBVAL ccpoint_to_rb_value(const cocos2d::Point& point);
RBVAL ccrect_to_rb_value(const cocos2d::Rect& rect);
RBVAL ccsize_to_rb_value(const cocos2d::Size& size);
RBVAL cccolor4b_to_rb_value(const cocos2d::Color4B& color);
RBVAL cccolor4f_to_rb_value(const cocos2d::Color4F& color);
RBVAL cccolor3b_to_rb_value(const cocos2d::Color3B& color);
RBVAL ccaffinetransform_to_rb_value(const cocos2d::AffineTransform& transform);
RBVAL FontDefinition_to_rb_value(const cocos2d::FontDefinition& fontDefinition);

RBVAL vec2_to_rb_value(const cocos2d::Vec2& vec2);
RBVAL vec3_to_rb_value(const cocos2d::Vec3& vec3);
RBVAL vec4_to_rb_value(const cocos2d::Vec4& vec4);
RBVAL mat4_to_rb_value(const cocos2d::Mat4& mat4);


template <class T>
RBVAL ccvector_to_rb_value(const cocos2d::Vector<T>& target){
	RBVAL result=rb_array_new_brige();
    for (const auto& obj : target)
    {
		RBVAL value=rbb_get_or_create_value(obj);
		rb_array_push_bridge(result,value);
    }
	return result;
}


bool rb_value_to_ccvaluemap(RBVAL value, cocos2d::ValueMap* target);
RBVAL ccvaluemap_to_rb_value(const cocos2d::ValueMap& target);

RBVAL FileUtils_to_rb_value(cocos2d::FileUtils * fileUtils);
RBVAL Application_to_rb_value(cocos2d::Application * application);
//RBVAL SimpleAudioEngine_to_rb_value(CocosDenshion::SimpleAudioEngine* simpleAudioEngine);


void rb_register_cocos2dx_BlendProtocol();
void rb_register_cocos2dx_TextureProtocol();
void rb_register_cocos2dx_LabelProtocol();

#endif /*_BINDING_HELPER_H_*/