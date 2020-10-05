#include <jni.h>
#include <stdio.h>
#include <dlfcn.h>
#include <string.h>
#include <iostream>
#include <android/log.h>
#include <stdio.h>
#include <string>

#define LOG_TAG "MRZ"
#define LOGD(...)  __android_log_print(ANDROID_LOG_DEBUG,LOG_TAG,__VA_ARGS__)

using namespace std;

bool isHooked = false;

JNICALL JNI_OnLoad(JavaVM *vm, void *reserved) {
    jint result = JNI_ERR;
    jint version = 0;
	JNIEnv *env = 0;
	
    do {
        if (vm->GetEnv((void **) &env, JNI_VERSION_1_6) == JNI_OK) {
            version = JNI_VERSION_1_6;
        } else if (vm->GetEnv((void **) &env, JNI_VERSION_1_4) == JNI_OK) {
            version = JNI_VERSION_1_4;
        } else if (vm->GetEnv((void **) &env, JNI_VERSION_1_2) == JNI_OK) {
            version = JNI_VERSION_1_2;
        } else if (vm->GetEnv((void **) &env, JNI_VERSION_1_1) == JNI_OK) {
            version = JNI_VERSION_1_1;
        } else {
            break;
        }
        result = version;

    } while (0);
	LOGD("MRZ", "Loaded...");
    if (!isHooked) {
        
        isHooked=true;
    }
    return result;
}
