# Misc permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.print.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.print.xml

# System
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.binary_xml=false
