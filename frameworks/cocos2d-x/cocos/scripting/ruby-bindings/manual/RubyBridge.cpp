#include "RubyBridge.h"

#include "ruby.h"

void _init_Ruby_VM(){	
	RUBY_INIT_STACK;
	ruby_init();
}

bool CheckError(int error);
int _ruby_executeString(const char * codes){
	int state;
	rb_eval_string_protect(codes,&state);
	CheckError(state);
	return state;
}

extern "C" void _printf_from_ruby(const char * info);

bool CheckError(int error) {
    if(error == 0) return false;
    VALUE lasterr = rb_gv_get("$!");
    // class
    VALUE klass = rb_class_path(CLASS_OF(lasterr));
    VALUE message = rb_obj_as_string(lasterr);
    
    char buff[4096];
    sprintf(buff,"[%s]%s",RSTRING_PTR(klass),RSTRING_PTR(message));
    _printf_from_ruby(buff);
    //LOGD("[%s]%s",RSTRING_PTR(klass),RSTRING_PTR(message));
    // backtrace
    VALUE errorinfo=rb_errinfo();
    if(!NIL_P(errorinfo)) {
        VALUE ary = rb_funcall(errorinfo, rb_intern("backtrace"), 0);
        int c;
        for (c=0; c<RARRAY_LEN(ary); c++) {
            VALUE line=RARRAY_PTR(ary)[c];
            char * info=RSTRING_PTR(line);
			_printf_from_ruby(info);
        }
    }
    return true;
}


void rb_raise_arg_error(const char * info){
	rb_raise(rb_eArgError,"%s", info);
}


void rb_raise_exception(const char * info){
	rb_raise(rb_eException,"%s",info);
}

void rb_raise_exception(const char * format,const char * info){
	rb_raise(rb_eException,format,info);
}

RBVAL RBNil(){
	return Qnil;
}


RBVAL rb_define_class_bridge(const char * name,RBVAL parent,bool useCCModule){
	//return rb_define_class(name,parent);
	static VALUE module=Qnil;
	if (module==Qnil){		
		module=rb_define_module("CC");
	}
	if (useCCModule){
		return rb_define_class_under(module,name,parent);
	}else{
		return rb_define_class(name,parent);
	}
}

RBVAL rb_get_root_class(){
	return rb_cObject;
}

void rb_define_singleton_method_bridge(RBVAL classValue,const char * name,rb_func func){
	rb_define_singleton_method(classValue,name,func,-1);
}

void rb_define_method_bridge(RBVAL classValue,const char * name,rb_func func){
	rb_define_method(classValue,name,func,-1);
}

void rb_define_global_function_bridge(const char * name,rb_func func,int argc){
	rb_define_global_function(name,func,argc);
}

const char * rb_string_to_char_ptr(RBVAL value,bool &ok){
	if (rb_obj_is_kind_of(value,rb_cString)==Qtrue){
		return RSTRING_PTR(value);
	}
	ok=false;
	return nullptr;
}

RBVAL char_ptr_to_rb_string(const char * ptr){
	return rb_str_new2(ptr);
}

bool rb_value_to_int(RBVAL value,int* target){
	if (rb_obj_is_kind_of(value,rb_cNumeric)==Qtrue){
		*target=NUM2INT(value);
		return true;
	}
	return false;
}

bool rb_value_to_uint(RBVAL value,unsigned int* target){
	if (rb_obj_is_kind_of(value,rb_cNumeric)==Qtrue){
		*target=NUM2UINT(value);
		return true;
	}
	return false;
}

bool rb_value_to_uint16(RBVAL value,unsigned char* target){
	if (rb_obj_is_kind_of(value,rb_cNumeric)==Qtrue){
		*target=(unsigned char)NUM2UINT(value);
		return true;
	}
	return false;
}

bool rb_value_to_int32(RBVAL value,short* target){
	if (rb_obj_is_kind_of(value,rb_cNumeric)==Qtrue){
		*target=(short)NUM2INT(value);
		return true;
	}
	return false;
}

bool rb_value_to_uint32(RBVAL value,unsigned short* target){
	if (rb_obj_is_kind_of(value,rb_cNumeric)==Qtrue){
		*target=(unsigned short)NUM2UINT(value);
		return true;
	}
	return false;
}

bool rb_value_to_int16(RBVAL value,char* target){
	if (rb_obj_is_kind_of(value,rb_cNumeric)==Qtrue){
		*target=NUM2CHR(value);
		return true;
	}
	return false;
}

bool rb_value_to_bool(RBVAL value,bool* target){
	if (value==Qtrue) (*target)=true;
	else if (value==Qfalse) (*target)=false;
	else return false;
	return true;
}

bool rb_value_to_float(RBVAL value,float* target){
	if (rb_obj_is_kind_of(value,rb_cNumeric)==Qtrue){
		*target=(float)NUM2DBL(value);
		return true;
	}
	return false;
}

bool rb_value_to_double(RBVAL value,double* target){
	if (rb_obj_is_kind_of(value,rb_cNumeric)==Qtrue){
		*target=NUM2DBL(value);
		return true;
	}
	return false;
}

bool rb_value_to_long(RBVAL value,long* target){
	if (rb_obj_is_kind_of(value,rb_cNumeric)==Qtrue){
		*target=NUM2LONG(value);
		return true;
	}
	return false;
}

bool rb_value_to_ulong(RBVAL value,unsigned long* target){
	if (rb_obj_is_kind_of(value,rb_cNumeric)==Qtrue){
		*target=NUM2ULONG(value);
		return true;
	}
	return false;
}

bool rb_value_is_hash(RBVAL value){
	return rb_obj_is_kind_of(value,rb_cHash)==Qtrue;
}

#define STATIC_SYMBOL_FUNC(NAME) \
RBVAL SYM_##NAME(){ \
	static VALUE symbol=Qnil; \
	if (symbol==Qnil){ \
		symbol=ID2SYM(rb_intern(#NAME)); \
	} \
	return symbol; \
}
STATIC_SYMBOL_FUNC(x);
STATIC_SYMBOL_FUNC(y);
STATIC_SYMBOL_FUNC(width);
STATIC_SYMBOL_FUNC(height);
STATIC_SYMBOL_FUNC(r);
STATIC_SYMBOL_FUNC(g);
STATIC_SYMBOL_FUNC(b);
STATIC_SYMBOL_FUNC(a);
STATIC_SYMBOL_FUNC(c);
STATIC_SYMBOL_FUNC(d);
STATIC_SYMBOL_FUNC(tx);
STATIC_SYMBOL_FUNC(ty);

bool rb_hash_get_float(RBVAL hash,RBVAL key,float* target){
	return rb_value_to_float(rb_hash_aref(hash,key),target);
}

bool rb_hash_get_uchar(RBVAL hash,RBVAL key,unsigned char* target){
	return rb_value_to_uint16(rb_hash_aref(hash,key),target);
}

bool rb_value_is_array(RBVAL value){
	return rb_obj_is_instance_of(value,rb_cArray)==Qtrue;
}

unsigned int rb_array_size(RBVAL arr){
	return RARRAY_LEN(arr);
}

RBVAL rb_array_entry(RBVAL arr,unsigned int index){
	return rb_ary_entry(arr,index);
}


RBVAL int_to_rb_value(int target){
	return INT2FIX(target);
}
RBVAL uint_to_rb_value(unsigned int target){
	return INT2FIX(target);
}
RBVAL uint16_to_rb_value(unsigned char target){
	return INT2FIX((unsigned int)target);
}
RBVAL ulong_to_rb_value(short target){
	return INT2FIX((int)target);
}
RBVAL uint32_to_rb_value(unsigned short target){
	return INT2FIX((unsigned int)target);
}
RBVAL int16_to_rb_value(char target){
	return CHR2FIX(target);
}
RBVAL bool_to_rb_value(bool target){
	return target?Qtrue:Qfalse;
}
RBVAL float_to_rb_value(float target){
	return rb_float_new((double)target);
}
RBVAL double_to_rb_value(double target){
	return rb_float_new(target);
}
RBVAL long_to_rb_value(long target){
	return INT2FIX(target);
}
RBVAL ulong_to_rb_value(unsigned long target){
	return INT2FIX(target);
}

void float_to_rb_hash(RBVAL hash,RBVAL key,float target){
	RBVAL value=float_to_rb_value(target);
	rb_hash_aset(hash,key,value);
}

void uchar_to_rb_hash(RBVAL hash,RBVAL key,unsigned char target){
	RBVAL value=uint16_to_rb_value(target);
	rb_hash_aset(hash,key,value);
}

RBVAL rb_hash_new_bridge(){
	return rb_hash_new();
}

RBVAL rb_array_new_brige(){
	return rb_ary_new();
}

void rb_array_push_bridge(RBVAL arr,RBVAL value){
	rb_ary_push(arr,value);
}

RBVAL _rb_proc_call_proctected(RBVAL proc){
	static RBVAL defaultEmptyArray=RBNil();
	if (defaultEmptyArray==RBNil()){
		defaultEmptyArray=rb_array_new_brige();
	}
	if (rb_obj_is_kind_of(proc,rb_cProc)){
		return rb_proc_call(proc,defaultEmptyArray);
	}else{
		_printf_from_ruby("proc value not valid!");
		return Qnil;
	}
}

RBVAL _rb_proc_call_proctected2(RBVAL procAndArgs){
	RBVAL proc=rb_array_entry(procAndArgs,0);
	RBVAL args=rb_array_entry(procAndArgs,1);
	if (rb_obj_is_kind_of(proc,rb_cProc)){
		return rb_proc_call(proc,args);
	}else{
		_printf_from_ruby("proc value not valid!");
		return Qnil;
	}
}

RBVAL rb_proc_call_protected(RBVAL proc){
	int state;
	RBVAL result=rb_protect(_rb_proc_call_proctected,proc,&state);
	CheckError(state);
	return result;
}

RBVAL rb_proc_call_bridge(RBVAL proc,RBVAL args){
	//if (rb_obj_is_kind_of(proc,rb_cProc)){
	//	return rb_proc_call(proc,args);
	//}else{
	//	_printf_from_ruby("proc value not valid!");
	//	return Qnil;
	//}
	RBVAL procAndArgs=rb_ary_new();
	rb_ary_push(procAndArgs,proc);
	rb_ary_push(procAndArgs,args);
	int state;
	RBVAL result=rb_protect(_rb_proc_call_proctected2,procAndArgs,&state);
	CheckError(state);
	return result;
}


void rb_gv_set_bridge(const char * globalName,RBVAL val){
	rb_gv_set(globalName,val);
}

STATIC_SYMBOL_FUNC(onTouchBegan);
STATIC_SYMBOL_FUNC(onTouchMoved);
STATIC_SYMBOL_FUNC(onTouchEnded);
STATIC_SYMBOL_FUNC(onTouchCancelled);

void rb_ivar_set_bridge(RBVAL obj, RBVAL id, RBVAL val){
	rb_ivar_set(obj,id,val);
}

RBVAL rb_ivar_get_bridge(RBVAL obj,RBVAL id){
	return rb_ivar_get(obj,id);	
}

void rb_define_attr_bridge(RBVAL obj,const char * name){
	rb_define_attr(obj,name,1,1);
}
     
RBVAL rb_class_new_instance_bridge(RBVAL clazz){
	return rb_class_new_instance(0,0,clazz);
}

bool rb_obj_is_kind_of_bridge(RBVAL obj, RBVAL clazz){
	return rb_obj_is_kind_of(obj,clazz)==Qtrue;
}

RBVAL rb_cPoint(){
	static RBVAL clazz=Qnil;
	if (clazz==Qnil){
		clazz=rb_define_class_bridge("Point",rb_cObject,true);
	}
	return clazz;
}

RBVAL rb_cSize(){
	static RBVAL clazz=Qnil;
	if (clazz==Qnil){
		clazz=rb_define_class_bridge("Size",rb_cObject,true);
	}
	return clazz;
}

RBVAL rb_cRect(){
	static RBVAL clazz=Qnil;
	if (clazz==Qnil){
		clazz=rb_define_class_bridge("Rect",rb_cObject,true);
	}
	return clazz;
}

long rb_obj_id_bridge(RBVAL obj){	
	return FIX2LONG(rb_obj_id(obj));
}


#define STATIC_INNER_ID(NAME,INNNAME) \
RBVAL ATID_##NAME(){ \
	static VALUE symbol=Qnil; \
	if (symbol==Qnil){ \
		symbol=rb_intern(#INNNAME); \
	} \
	return symbol; \
}

STATIC_INNER_ID(x,@x);
STATIC_INNER_ID(y,@y);
STATIC_INNER_ID(width,@width);
STATIC_INNER_ID(height,@height);
STATIC_INNER_ID(onClicked,@onClicked);

void rb_iv_set_bridge(RBVAL obj,const char * name,RBVAL val){
	rb_iv_set(obj,name,val);
}

RBVAL rb_sym_from_name(const char * name){
	return ID2SYM(rb_intern(name));
}

void rb_cvar_set_bridge(RBVAL clazz, RBVAL id, RBVAL val){
	rb_cvar_set(clazz,id,val);
}


bool rb_value_to_ssize_t(RBVAL value,ssize_t* target){
	if (rb_obj_is_kind_of(value,rb_cNumeric)==Qtrue){
		*target=NUM2INT(value);
		return true;
	}
	return false;
}

RBVAL rb_intern_bridge(const char * name){
	return rb_intern(name);
}


#if defined(_MSC_VER) || defined(__MINGW32__)
bool rb_value_to_ssize_t(RBVAL value,long * target){
	if (rb_obj_is_kind_of(value,rb_cNumeric)==Qtrue){
		*target=NUM2INT(value);
		return true;
	}
	return false;
}
#endif