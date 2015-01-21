#include "RubyValueMap.h"
#include "ruby.h"

void release_cc_ref(void * ptr){
	cocos2d::Ref *ref=(cocos2d::Ref *)ptr;
	ref->release();
	ref->_RBVAL=0l;
}

VALUE rbb_create_value(cocos2d::Ref * ptr,VALUE klass){
	VALUE value= Data_Wrap_Struct(klass, 0, release_cc_ref, ptr);
	ptr->retain();
	ptr->_RBVAL=value;
	return value;
}

VALUE rbb_create_value_raw(void *ptr,VALUE klass){
	VALUE value= Data_Wrap_Struct(klass, 0, 0, ptr);
	return value;
}

VALUE rbb_get_or_create_value(cocos2d::Ref * ptr,VALUE klass){
	if (ptr->_RBVAL!=0l){
		return ptr->_RBVAL;
	}else{
		return rbb_create_value(ptr,klass);
	}
}

cocos2d::Ref * rbb_get_ptr(VALUE value){
	if (value==RBNil()) return nullptr;
	cocos2d::Ref *ref=nullptr;
	Data_Get_Struct(value, cocos2d::Ref,ref);
	return ref;
}

void * rbb_get_ptr_raw(RBVAL value){
	if (value==RBNil()) return nullptr;
	void *ptr=nullptr;
	Data_Get_Struct(value, void,ptr);
	return ptr;
}

//template <class T>
//bool rb_value_get_ptr(RBVAL value,T** target){
////bool rb_value_get_ptr(RBVAL value,void** target){
//	(*target)=(T*)rbb_get_ptr(value);
//	return true;
//}

extern "C" void _printf_from_ruby(const char * info);

#include <unordered_map>
static std::unordered_map<std::string, RBVAL> _rb_global_type_map;
void rbb_register_class_value(const std::string &name,RBVAL clazz){
	if (_rb_global_type_map.find(name)==_rb_global_type_map.end()){	
		std::string info("register ");
		info.append(name);
		_printf_from_ruby(info.c_str());
		_rb_global_type_map.insert(std::make_pair(name,clazz));	
		if (name.length()>6){
			const char * testname=name.c_str();
			if (testname[0]=='c'&&
				testname[1]=='l'&&
				testname[2]=='a'&&
				testname[3]=='s'&&
				testname[4]=='s'&&
				testname[5]==' '){
				std::string aftername(testname+6);
				_rb_global_type_map.insert(std::make_pair(aftername,clazz));	
			}
		}
	}else{
		//already exists?
	}
}

RBVAL rb_get_class_value(const std::string &typeName){
	auto typeIter = _rb_global_type_map.find(typeName);
	if (typeIter != _rb_global_type_map.end()){
		return typeIter->second;
	}
	std::string errorInfo("rb_get_class_value miss:");
	errorInfo.append(typeName);
	_printf_from_ruby(errorInfo.c_str());
	return RBNil();
}

//template <class T>
//RBVAL rbb_get_or_create_value(T * ptr){
//	RBVAL result=find_value_of_ptr(ptr);
//	if (result!=RBNil()){
//		return result;
//	}else{
//		bool found = false;
//		std::string typeName = typeid(*ptr).name();
//		auto typeIter = _rb_global_type_map.find(typeName);
//		if (typeIter == _rb_global_type_map.end()){
//			typeName = typeid(T).name();
//			typeIter = _rb_global_type_map.find(typeName);
//			if (typeIter != _rb_global_type_map.end())
//			{
//				found = true;
//			}
//		}
//		else
//		{
//			found = true;
//		}
//		if (found){
//			return rbb_create_value(ptr,typeIter->second);
//		}else{
//			rb_raise_arg_error("not exists type!");
//			return RBNil();
//		}
//	}
//}


RBVAL rbb_create_value(cocos2d::Ref * ptr,const std::string &typeName){
	auto typeIter = _rb_global_type_map.find(typeName);
	if (typeIter != _rb_global_type_map.end()){
		return rbb_create_value(ptr,typeIter->second);
	}else{
		rb_raise_arg_error("not exists type!");
		return RBNil();
	}
}