# Audio permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml

# Audio packages
PRODUCT_PACKAGES += \
    audio.primary.msm8960 \
    audio.r_submix.default \
    audio.usb.default \
    libaudioclient_shim \
    libaudio-resampler \
    libaudioroute \
    libqcomvoiceprocessing

# Audio tools
PRODUCT_PACKAGES += \
    tinymix

# Audio HIDL interfaces
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-service \
    android.hardware.audio@6.0-impl \
    android.hardware.audio.effect@6.0-impl \
    android.hardware.bluetooth.audio@2.1-impl \
    audio.bluetooth.default
