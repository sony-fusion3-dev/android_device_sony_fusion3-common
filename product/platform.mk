# HIDL
PRODUCT_PACKAGES += \
    libhidltransport \
    libhidltransport.vendor \
    libhwbinder \
    libhwbinder.vendor

# Additional native libraries
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

# Protobuf
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full-vendorcompat \
    libprotobuf-cpp-lite-vendorcompat

# Shipping API
PRODUCT_SHIPPING_API_LEVEL := 16

# Ramdisk packages
PRODUCT_PACKAGES += \
    fstab.qcom \
    fstab.ramdisk \
    ueventd.qcom.rc

# Sony TrimArea package
PRODUCT_PACKAGES += \
    tad_static

# Sony MACAddrSetup package
PRODUCT_PACKAGES += \
    macaddrsetup
