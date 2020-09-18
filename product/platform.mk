# HIDL
PRODUCT_PACKAGES += \
    libhidltransport \
    libhidltransport.vendor \
    libhwbinder \
    libhwbinder.vendor

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
