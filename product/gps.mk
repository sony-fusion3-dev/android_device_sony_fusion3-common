# GPS packages
PRODUCT_PACKAGES += \
    gps.conf

# GPS properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=0 \
    ro.gps.agps_provider=1
