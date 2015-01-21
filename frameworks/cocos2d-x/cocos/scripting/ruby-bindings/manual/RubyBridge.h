#ifndef _RUBY_BRIDGE_H_
#define _RUBY_BRIDGE_H_

void _init_Ruby_VM();
int _ruby_executeString(const char * codes);

#define RBVAL unsigned long

void rb_raise_exception(const char * info);
void rb_raise_exception(const char * format,const char * info);

void rb_raise_arg_error(const char * info);

RBVAL RBNil();

RBVAL rb_define_class_bridge(const char * name,RBVAL parent,bool useCCModule);

RBVAL rb_get_root_class();

#define RB_FUNC(func) ((RBVAL (*)(...))func)
typedef RBVAL (*rb_func)(...);

void rb_define_singleton_method_bridge(RBVAL classValue,const char * name,rb_func func);
void rb_define_method_bridge(RBVAL classValue,const char * name,rb_func func);
void rb_define_global_function_bridge(const char * name,rb_func func,int argc);

const char * rb_string_to_char_ptr(RBVAL value,bool &ok);
RBVAL char_ptr_to_rb_string(const char * ptr);

bool rb_value_to_int(RBVAL value,int* target);
bool rb_value_to_uint(RBVAL value,unsigned int* target);
bool rb_value_to_uint16(RBVAL value,unsigned char* target);
bool rb_value_to_int32(RBVAL value,short* target);
bool rb_value_to_uint32(RBVAL value,unsigned short* target);
bool rb_value_to_int16(RBVAL value,char* target);
bool rb_value_to_bool(RBVAL value,bool* target);
bool rb_value_to_float(RBVAL value,float* target);
bool rb_value_to_double(RBVAL value,double* target);
bool rb_value_to_long(RBVAL value,long* target);
bool rb_value_to_ulong(RBVAL value,unsigned long* target);

bool rb_value_is_hash(RBVAL value);

RBVAL SYM_x();
RBVAL SYM_y();
RBVAL SYM_width();
RBVAL SYM_height();

RBVAL SYM_r();
RBVAL SYM_g();
RBVAL SYM_b();
RBVAL SYM_a();

RBVAL SYM_c();
RBVAL SYM_d();

RBVAL SYM_tx();
RBVAL SYM_ty();

bool rb_hash_get_float(RBVAL hash,RBVAL key,float* target);
bool rb_hash_get_uchar(RBVAL hash,RBVAL key,unsigned char* target);

bool rb_value_is_array(RBVAL value);
unsigned int rb_array_size(RBVAL value);
RBVAL rb_array_entry(RBVAL arr,unsigned int index);

RBVAL int_to_rb_value(int target);
RBVAL uint_to_rb_value(unsigned int target);
RBVAL uint16_to_rb_value(unsigned char target);
RBVAL int32_to_rb_value(short target);
RBVAL uint32_to_rb_value(unsigned short target);
RBVAL int16_to_rb_value(char target);
RBVAL bool_to_rb_value(bool target);
RBVAL float_to_rb_value(float target);
RBVAL double_to_rb_value(double target);
RBVAL long_to_rb_value(long target);
RBVAL ulong_to_rb_value(unsigned long target);

void float_to_rb_hash(RBVAL hash,RBVAL key,float target);
void uchar_to_rb_hash(RBVAL hash,RBVAL key,unsigned char target);
RBVAL rb_hash_new_bridge();
RBVAL rb_array_new_brige();
void rb_array_push_bridge(RBVAL arr,RBVAL value);

RBVAL rb_proc_call_bridge(RBVAL proc,RBVAL args);
RBVAL rb_proc_call_protected(RBVAL proc);

void rb_gv_set_bridge(const char * globalName,RBVAL val);

RBVAL SYM_onTouchBegan();
RBVAL SYM_onTouchMoved();
RBVAL SYM_onTouchEnded();
RBVAL SYM_onTouchCancelled();

void rb_ivar_set_bridge(RBVAL obj, RBVAL id, RBVAL val);
void rb_define_attr_bridge(RBVAL obj,const char * name);

RBVAL rb_ivar_get_bridge(RBVAL obj,RBVAL id);
RBVAL rb_class_new_instance_bridge(RBVAL clazz);
bool rb_obj_is_kind_of_bridge(RBVAL obj, RBVAL clazz);
RBVAL rb_cPoint();
RBVAL rb_cSize();
RBVAL rb_cRect();
long rb_obj_id_bridge(RBVAL obj);

void rb_iv_set_bridge(RBVAL obj,const char * name,RBVAL val);

RBVAL ATID_x();
RBVAL ATID_y();
RBVAL ATID_width();
RBVAL ATID_height();
RBVAL ATID_onClicked();

RBVAL rb_sym_from_name(const char * name);
void rb_cvar_set_bridge(RBVAL clazz, RBVAL id, RBVAL val);

RBVAL rb_intern_bridge(const char * name);

#if defined(_MSC_VER) || defined(__MINGW32__)
#include <BaseTsd.h>
#include <WinSock2.h>

#ifndef __SSIZE_T
#define __SSIZE_T
typedef SSIZE_T ssize_t;
#endif // __SSIZE_T
#else
#include <sys/types.h>
#endif

bool rb_value_to_ssize_t(RBVAL value,ssize_t* target);
#if defined(_MSC_VER) || defined(__MINGW32__)
bool rb_value_to_ssize_t(RBVAL long,long *);
#endif

#endif /*_RUBY_BRIDGE_H_*/
