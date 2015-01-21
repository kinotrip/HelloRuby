LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := ruby
LOCAL_SRC_FILES := \
    array.c \
    bignum.c \
    class.c \
    compar.c \
    compile.c \
    complex.c \
    cont.c \
    debug.c \
    dir.c \
    dln.c \
    dln_find.c \
    dmyencoding.c \
    dmyext.c \
    enc/ascii.c \
    enc/unicode.c \
    enc/us_ascii.c \
    enc/utf_8.c \
    enc/encdb.c \
    enc/iso_8859_1.c \
    enc/iso_8859_9.c \
    enum.c \
    enumerator.c \
    error.c \
    eval.c \
    file.c \
    gc.c \
    generated/parse.c \
    hash.c \
    inits.c \
    io.c \
    iseq.c \
    load.c \
    marshal.c \
    math.c \
    miniprelude.c \
    missing/acosh.c \
    missing/cbrt.c \
    missing/crypt.c \
    missing/dup2.c \
    missing/erf.c \
    missing/hypot.c \
    missing/lgamma_r.c \
    missing/stdlib.c \
    missing/strlcat.c \
    missing/strlcpy.c \
    missing/tgamma.c \
    newline.c \
    node.c \
    numeric.c \
    object.c \
    pack.c \
    proc.c \
    process.c \
    random.c \
    range.c \
    rational.c \
    re.c \
    regcomp.c \
    regenc.c \
    regerror.c \
    regexec.c \
    regparse.c \
    regsyntax.c \
    ruby.c \
    safe.c \
    signal.c \
    sprintf.c \
    st.c \
    strftime.c \
    string.c \
    struct.c \
    thread.c \
    time.c \
    transcode.c \
    util.c \
    variable.c \
    version.c \
    vm.c \
    vm_dump.c

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include \
    $(LOCAL_PATH)/android \
    $(LOCAL_PATH)/generated \
    $(LOCAL_PATH) \
    $(SHARED_PATH_INC)
    

include $(BUILD_STATIC_LIBRARY)
