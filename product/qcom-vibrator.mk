ifneq ($(filter dogo odin yuga, $(TARGET_DEVICE)),)
# Vibrator HIDL interfaces
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-service.fusion3
endif
