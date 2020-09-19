# SHIM
TARGET_LD_SHIM_LIBS := \
    /system/bin/mediaserver|libshim_unwind.so \
    /system/lib/libcald_pal.so|libshim_cald.so \
    /system/lib/hw/camera.vendor.qcom.so|libshim_camera.so \
    /system/lib/libMPU3050.so|libshim_MPU3050.so \
    /system/vendor/lib/libril-qc-qmi-1.so|libaudioclient_shim.so
