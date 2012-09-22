LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_DEX_PREOPT := false

LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_SRC_FILES += \
        /src/com/baidu/cafe/remote/IRemoteArms.aidl \
        /src/edu/umich/PowerTutor/service/ICounterService.aidl

LOCAL_PACKAGE_NAME := Cafe

#LOCAL_CERTIFICATE := platform

include $(BUILD_PACKAGE)

include $(call all-makefiles-under, $(LOCAL_PATH))

