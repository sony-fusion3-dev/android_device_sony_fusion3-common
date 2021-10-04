# Media configurations
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(COMMON_PATH)/configs/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(COMMON_PATH)/configs/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml

# Media properties
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.ccodec=0

# OMX
PRODUCT_PROPERTY_OVERRIDES += \
    persist.media.treble_omx=false
