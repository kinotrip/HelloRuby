#include "BindingHelper.h"

extern "C" void _printf_from_ruby(const char * info){
	static bool alreadyReturn=false;
	int idx=strlen(info)-1;
	if (idx==0&&info[idx]=='\n'&&alreadyReturn){
		alreadyReturn=false;
		return;
	}
	cocos2d::log("[RUBY] %s",info);
	alreadyReturn=true;
}

bool rb_value_to_std_string(RBVAL value,std::string *target){
	bool result=true;
	const char * cstr=rb_string_to_char_ptr(value,result);
	target->append(cstr);
	return result;
}

bool rb_value_to_ccpoint(RBVAL value,cocos2d::Point* point){
	if (rb_obj_is_kind_of_bridge(value,rb_cPoint())){
		RBVAL x=rb_ivar_get_bridge(value,ATID_x());
		bool result=rb_value_to_float(x,&(point->x));
		if (!result) return false;	
		RBVAL y=rb_ivar_get_bridge(value,ATID_y());	
		result&=rb_value_to_float(y,&(point->y));
		return result;
	}else if (rb_value_is_array(value)){
		RBVAL v1=rb_array_entry(value,0);
		bool result=rb_value_to_float(v1,&(point->x));
		if (!result) return false;
		RBVAL v2=rb_array_entry(value,1);
		result&=rb_value_to_float(v2,&(point->y));
		if (!result) return false;
	}else if (rb_value_is_hash(value)){
		bool result=rb_hash_get_float(value,SYM_x(),&(point->x));
		result &= rb_hash_get_float(value,SYM_y(),&(point->y));
		return result;
	}else return false;
    return true;
}

bool rb_value_to_ccrect(RBVAL value,cocos2d::Rect* rect){
	if (rb_obj_is_kind_of_bridge(value,rb_cRect())){
		RBVAL x=rb_ivar_get_bridge(value,ATID_x());
		bool result=rb_value_to_float(x,&(rect->origin.x));
		if (!result) return false;	
		RBVAL y=rb_ivar_get_bridge(value,ATID_y());	
		result&=rb_value_to_float(y,&(rect->origin.y));
		if (!result) return false;	
		RBVAL width=rb_ivar_get_bridge(value,ATID_width());	
		result&=rb_value_to_float(width,&(rect->size.width));
		if (!result) return false;	
		RBVAL height=rb_ivar_get_bridge(value,ATID_height());	
		result&=rb_value_to_float(height,&(rect->size.height));
		return result;
	}else if (rb_value_is_array(value)){
		RBVAL v1=rb_array_entry(value,0);
		bool result=rb_value_to_float(v1,&(rect->origin.x));
		if (!result) return false;
		RBVAL v2=rb_array_entry(value,1);
		result&=rb_value_to_float(v2,&(rect->origin.y));
		if (!result) return false;
		RBVAL v3=rb_array_entry(value,2);
		result&=rb_value_to_float(v3,&(rect->size.width));
		if (!result) return false;
		RBVAL v4=rb_array_entry(value,3);
		result&=rb_value_to_float(v4,&(rect->size.height));
		if (!result) return false;
		return true;
	}else if (rb_value_is_hash(value)){
		bool result=rb_hash_get_float(value,SYM_x(),&(rect->origin.x));
		result &= rb_hash_get_float(value,SYM_y(),&(rect->origin.y));
		result&=rb_hash_get_float(value,SYM_width(),&(rect->size.width));
		result&=rb_hash_get_float(value,SYM_height(),&(rect->size.height));
		return result;
	}else return false;
}

bool rb_value_to_ccsize(RBVAL value,cocos2d::Size* size){
	if (rb_obj_is_kind_of_bridge(value,rb_cSize())){
		RBVAL width=rb_ivar_get_bridge(value,ATID_width());
		bool result=rb_value_to_float(width,&(size->width));
		if (!result) return false;	
		RBVAL height=rb_ivar_get_bridge(value,ATID_height());	
		result&=rb_value_to_float(height,&(size->height));
		return result;
	}else if (rb_value_is_array(value)){
		RBVAL v1=rb_array_entry(value,0);
		bool result=rb_value_to_float(v1,&(size->width));
		if (!result) return false;
		RBVAL v2=rb_array_entry(value,1);
		result&=rb_value_to_float(v2,&(size->height));
		if (!result) return false;
	}else if (rb_value_is_hash(value)){
		bool result=rb_hash_get_float(value,SYM_width(),&(size->width));
		result&=rb_hash_get_float(value,SYM_height(),&(size->height));
		return result;
	}else return false;
    return true;
}

bool rb_value_to_cccolor4b(RBVAL value,cocos2d::Color4B* color){
	if (!rb_value_is_hash(value)) return false;
	bool result=rb_hash_get_uchar(value,SYM_r(),&(color->r));
	result&=rb_hash_get_uchar(value,SYM_g(),&(color->g));
	result&=rb_hash_get_uchar(value,SYM_b(),&(color->b));
	result&=rb_hash_get_uchar(value,SYM_a(),&(color->a));
	return result;
}

bool rb_value_to_cccolor4f(RBVAL value,cocos2d::Color4F* color){
	if (!rb_value_is_hash(value)) return false;
	bool result=rb_hash_get_float(value,SYM_r(),&(color->r));
	result&=rb_hash_get_float(value,SYM_g(),&(color->g));
	result&=rb_hash_get_float(value,SYM_b(),&(color->b));
	result&=rb_hash_get_float(value,SYM_a(),&(color->a));
	return result;
}

bool rb_value_to_cccolor3b(RBVAL value,cocos2d::Color3B* color){
	if (!rb_value_is_hash(value)) return false;
	bool result=rb_hash_get_uchar(value,SYM_r(),&(color->r));
	result&=rb_hash_get_uchar(value,SYM_g(),&(color->g));
	result&=rb_hash_get_uchar(value,SYM_b(),&(color->b));
	return result;
}

bool rb_value_to_ccaffinetransform(RBVAL value,cocos2d::AffineTransform * transform){
	if (!rb_value_is_hash(value)) return false;
	bool result=rb_hash_get_float(value,SYM_a(),&(transform->a));
	result&=rb_hash_get_float(value,SYM_b(),&(transform->b));
	result&=rb_hash_get_float(value,SYM_c(),&(transform->c));
	result&=rb_hash_get_float(value,SYM_d(),&(transform->d));
	result&=rb_hash_get_float(value,SYM_tx(),&(transform->tx));
	result&=rb_hash_get_float(value,SYM_ty(),&(transform->ty));
	return result;
}

bool rb_value_to_FontDefinition(RBVAL value,cocos2d::FontDefinition * fontDefinition){
	//TODO:implement
	return true;
}

bool rb_value_to_vec2(RBVAL value,cocos2d::Vec2 *vec2){
	if ((!rb_value_is_array(value))||(rb_array_size(value)<2)){
		return false;
	}
	RBVAL v1=rb_array_entry(value,0);
	bool result=rb_value_to_float(v1,&(vec2->x));
	RBVAL v2=rb_array_entry(value,1);
	result&=rb_value_to_float(v2,&(vec2->y));
	return result;
}

bool rb_value_to_vec3(RBVAL value,cocos2d::Vec3 *vec3){
	if ((!rb_value_is_array(value))||(rb_array_size(value)<3)){
		return false;
	}
	RBVAL v1=rb_array_entry(value,0);
	bool result=rb_value_to_float(v1,&(vec3->x));
	RBVAL v2=rb_array_entry(value,1);
	result&=rb_value_to_float(v2,&(vec3->y));
	RBVAL v3=rb_array_entry(value,2);
	result&=rb_value_to_float(v3,&(vec3->z));
	return result;
}

bool rb_value_to_vec4(RBVAL value,cocos2d::Vec4 *vec4){
	if ((!rb_value_is_array(value))||(rb_array_size(value)<4)){
		return false;
	}
	RBVAL v1=rb_array_entry(value,0);
	bool result=rb_value_to_float(v1,&(vec4->x));
	RBVAL v2=rb_array_entry(value,1);
	result&=rb_value_to_float(v2,&(vec4->y));
	RBVAL v3=rb_array_entry(value,2);
	result&=rb_value_to_float(v3,&(vec4->z));
	RBVAL v4=rb_array_entry(value,3);
	result&=rb_value_to_float(v4,&(vec4->w));
	return result;
}

bool rb_value_to_mat4(RBVAL value,cocos2d::Mat4 *mat4){
	if ((!rb_value_is_array(value))||(rb_array_size(value)<4)){
		return false;
	}
	for(int i=0;i<4;i++){
		RBVAL line=rb_array_entry(value,i);
		if ((!rb_value_is_array(line))||(rb_array_size(line)<4)){
			return false;
		}
		for(int j=0;j<4;j++){
			RBVAL number=rb_array_entry(line,j);
			if (! rb_value_to_float(number,&(mat4->m[i*4+j]))){
				return false;
			}
		}
	}
    return true;
}



//template <class T>
//bool rb_value_to_ccvector(RBVAL value, cocos2d::Vector<T>* target){
//	if (!rb_value_is_array(value)) return false;
//	unsigned int size=rb_array_size(value);
//	for(unsigned int i=0;i<size;i++){
//		RBVAL current=rb_array_entry(i);
//		T * cobj=rbb_get_ptr(current);
//		if (cobj){
//			target->pushBack(cobj);
//		}
//	}
//	return true;
//}


RBVAL std_string_to_rb_value(const std::string& target){
	return char_ptr_to_rb_string(target.c_str());
}

RBVAL ccpoint_to_rb_value(const cocos2d::Point& point){
	RBVAL result=rb_class_new_instance_bridge(rb_cPoint());	
	rb_ivar_set_bridge(result,ATID_x(),float_to_rb_value(point.x));
	rb_ivar_set_bridge(result,ATID_y(),float_to_rb_value(point.y));
	return result;
}

RBVAL ccrect_to_rb_value(const cocos2d::Rect& rect){
	RBVAL result=rb_class_new_instance_bridge(rb_cRect());	
	rb_ivar_set_bridge(result,ATID_x(),float_to_rb_value(rect.origin.x));
	rb_ivar_set_bridge(result,ATID_y(),float_to_rb_value(rect.origin.y));
	rb_ivar_set_bridge(result,ATID_width(),float_to_rb_value(rect.size.width));
	rb_ivar_set_bridge(result,ATID_height(),float_to_rb_value(rect.size.height));
	return result;
}

RBVAL ccsize_to_rb_value(const cocos2d::Size& size){
	RBVAL result=rb_class_new_instance_bridge(rb_cSize());
	rb_ivar_set_bridge(result,ATID_width(),float_to_rb_value(size.width));
	rb_ivar_set_bridge(result,ATID_height(),float_to_rb_value(size.height));
	return result;
}

RBVAL cccolor4b_to_rb_value(const cocos2d::Color4B& color){
	RBVAL hash=rb_hash_new_bridge();
	uchar_to_rb_hash(hash,SYM_r(),color.r);
	uchar_to_rb_hash(hash,SYM_g(),color.g);
	uchar_to_rb_hash(hash,SYM_b(),color.b);
	uchar_to_rb_hash(hash,SYM_a(),color.a);
	return hash;
}

RBVAL cccolor4f_to_rb_value(const cocos2d::Color4F& color){
	RBVAL hash=rb_hash_new_bridge();
	float_to_rb_hash(hash,SYM_r(),color.r);
	float_to_rb_hash(hash,SYM_g(),color.g);
	float_to_rb_hash(hash,SYM_b(),color.b);
	float_to_rb_hash(hash,SYM_a(),color.a);
	return hash;
}

RBVAL cccolor3b_to_rb_value(const cocos2d::Color3B& color){
	RBVAL hash=rb_hash_new_bridge();
	uchar_to_rb_hash(hash,SYM_r(),color.r);
	uchar_to_rb_hash(hash,SYM_g(),color.g);
	uchar_to_rb_hash(hash,SYM_b(),color.b);
	return hash;
}

RBVAL ccaffinetransform_to_rb_value(const cocos2d::AffineTransform& transform){
	RBVAL hash=rb_hash_new_bridge();
	float_to_rb_hash(hash,SYM_a(),transform.a);
	float_to_rb_hash(hash,SYM_b(),transform.b);
	float_to_rb_hash(hash,SYM_c(),transform.c);
	float_to_rb_hash(hash,SYM_d(),transform.d);
	float_to_rb_hash(hash,SYM_tx(),transform.tx);
	float_to_rb_hash(hash,SYM_ty(),transform.ty);
	return hash;
}

RBVAL FontDefinition_to_rb_value(const cocos2d::FontDefinition& fontDefinition){
	rb_raise_arg_error("not impelments");
	return RBNil();
}

RBVAL vec2_to_rb_value(const cocos2d::Vec2& vec2){
	RBVAL result=rb_array_new_brige();
	rb_array_push_bridge(result,float_to_rb_value(vec2.x));
	rb_array_push_bridge(result,float_to_rb_value(vec2.y));
	return result;
}

RBVAL vec3_to_rb_value(const cocos2d::Vec3& vec3){
	RBVAL result=rb_array_new_brige();
	rb_array_push_bridge(result,float_to_rb_value(vec3.x));
	rb_array_push_bridge(result,float_to_rb_value(vec3.y));
	rb_array_push_bridge(result,float_to_rb_value(vec3.z));
	return result;
}

RBVAL vec4_to_rb_value(const cocos2d::Vec4& vec4){
	RBVAL result=rb_array_new_brige();
	rb_array_push_bridge(result,float_to_rb_value(vec4.x));
	rb_array_push_bridge(result,float_to_rb_value(vec4.y));
	rb_array_push_bridge(result,float_to_rb_value(vec4.z));
	rb_array_push_bridge(result,float_to_rb_value(vec4.w));
	return result;
}

RBVAL mat4_to_rb_value(const cocos2d::Mat4& mat4){
	RBVAL result=rb_array_new_brige();
	for(int i=0;i<4;i++){
		RBVAL line=rb_array_new_brige();
		rb_array_push_bridge(result,line);
		for(int j=0;j<4;j++){
			rb_array_push_bridge(line,float_to_rb_value(mat4.m[i*4+j]));
		}
	}
	return result;
}

//template <class T>
//RBVAL ccvector_to_rb_value(const cocos2d::Vector<T>& target){
//	RBVAL result=rb_array_new_brige();
//    for (const auto& obj : target)
//    {
//		RBVAL value=rbb_get_or_create_value(obj);
//		rb_array_push_bridge(result,value);
//    }
//	return result;
//}

bool rb_value_to_ccvaluemap(RBVAL value, cocos2d::ValueMap* target){
	//TODO:implement
	return true;
}

RBVAL ccvaluemap_to_rb_value(const cocos2d::ValueMap& target){
	rb_raise_arg_error("not impelments");
	return RBNil();
}

RBVAL FileUtils_to_rb_value(cocos2d::FileUtils * fileUtils){
	static RBVAL instance=0l;
	if (instance==0l){
		instance=rbb_create_value_raw(fileUtils,rb_get_class_value("cocos2d::FileUtils"));
		rb_gv_set_bridge("$FileUtils",instance);
	}
	return instance;
}

RBVAL Application_to_rb_value(cocos2d::Application * application){
	static RBVAL instance=0l;
	if (instance==0l){
		instance=rbb_create_value_raw(application,rb_get_class_value("cocos2d::Application"));
		rb_gv_set_bridge("$Application",instance);
	}
	return instance;
}

//RBVAL SimpleAudioEngine_to_rb_value(CocosDenshion::SimpleAudioEngine* simpleAudioEngine){
//	static RBVAL instance=0l;
//	if (instance==0l){
//		instance=rbb_create_value_raw(simpleAudioEngine,rb_get_class_value("CocosDenshion::SimpleAudioEngine"));
//		rb_gv_set_bridge("$SimpleAudioEngine",instance);
//	}
//	return instance;
//}

void rb_register_cocos2dx_BlendProtocol(){}
void rb_register_cocos2dx_TextureProtocol(){}
void rb_register_cocos2dx_LabelProtocol(){}