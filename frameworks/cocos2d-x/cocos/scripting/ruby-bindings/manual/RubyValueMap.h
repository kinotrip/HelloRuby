#ifndef _RUBY_TOOLS_H_
#define _RUBY_TOOLS_H_
#include "RubyBridge.h"
#include <string>
#include "cocos2d.h"


#if (CC_TARGET_PLATFORM == CC_PLATFORM_ANDROID)
#include <typeinfo>
#endif
void rbb_register_class_value(const std::string &name,RBVAL clazz);
RBVAL rb_get_class_value(const std::string &typeName);

RBVAL rbb_create_value(cocos2d::Ref * ptr,RBVAL klass);
RBVAL rbb_create_value_raw(void *ptr,RBVAL klass);
RBVAL rbb_create_value(cocos2d::Ref * ptr,const std::string &typeName);

RBVAL rbb_get_or_create_value(cocos2d::Ref * ptr,RBVAL klass);


template <class T>
RBVAL rbb_get_or_create_value(T * ptr){
	cocos2d::Ref *ref=(cocos2d::Ref *)ptr;
	if (ref->_RBVAL!=0l){
		return ref->_RBVAL;
	}else{
		std::string typeName = typeid(*ptr).name();
		RBVAL classValue=rb_get_class_value(typeName);		
		if (classValue == RBNil()){
			typeName = typeid(T).name();
			classValue=rb_get_class_value(typeName);
			if (classValue == RBNil())
			{
				rb_raise_exception("not exists type:%s",typeName.c_str());
				return RBNil();
			}
		}
		return rbb_create_value(ptr,classValue);
	}
}
cocos2d::Ref * rbb_get_ptr(RBVAL value);

template <class T>
bool rb_value_get_ptr(RBVAL value,T** target){
	(*target)=dynamic_cast<T*>(rbb_get_ptr(value));  //(T*)rbb_get_ptr(value);
	return true;
}

void * rbb_get_ptr_raw(RBVAL value);

template <class T>
bool rb_value_get_ptr_raw(RBVAL value,T** target){
	(*target)=(T*)rbb_get_ptr_raw(value);
	return true;
}

template< typename DERIVED >
class TypeTest
{
public:
	static const char* s_name()
	{
		// return id unique for DERIVED
		// ALWAYS VALID BUT STRING, NOT INT - BUT VALID AND CROSS-PLATFORM/CROSS-VERSION COMPATBLE
		// AS FAR AS YOU KEEP THE CLASS NAME
		return typeid( DERIVED ).name();
	}
};


#endif /*_RUBY_TOOLS_H_*/