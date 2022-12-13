# Camera packages
PRODUCT_PACKAGES += \
    camera.qcom \
    Aperture

# Camera SHIM packages
PRODUCT_PACKAGES += \
    libshim_cald \
    libshim_camera \
    libshim_unwind

# Camera configurations
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/external_camera_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/external_camera_config.xml
