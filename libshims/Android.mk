LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    gui/SensorManager.cpp \
    symbols/Parcel.cpp \
    utils/VectorImpl.cpp

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include \
    system/core/libutils

LOCAL_SHARED_LIBRARIES := \
    libcutils \
    libgui \
    libbinder \
    libsensor \
    libutils \
    liblog

LOCAL_MODULE := libshim_cald

LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    symbols/GraphicBufferMapper.cpp \
    symbols/Permissions.cpp \
    symbols/SurfaceComposer.cpp \
    utils/Looper.cpp \
    utils/VectorImpl.cpp

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include \
    system/core/libutils

LOCAL_SHARED_LIBRARIES := \
    libbase \
    libgui \
    libui \
    libutils \
    liblog \
    libnativewindow

LOCAL_MODULE := libshim_camera

LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    symbols/Unwind.cpp

LOCAL_MODULE := libshim_unwind

LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    utils/VectorImpl.cpp

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include \
    external/safe-iop/include \
    system/core/libutils

LOCAL_SHARED_LIBRARIES := \
    liblog \
    libutils

LOCAL_MODULE := libshim_MPU3050

LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := libaudioclient_shim.cpp
LOCAL_MODULE := libaudioclient_shim
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libaudioclient
LOCAL_VENDOR_MODULE := true

include $(BUILD_SHARED_LIBRARY)
