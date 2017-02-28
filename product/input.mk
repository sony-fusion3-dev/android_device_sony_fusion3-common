# Keys layouts
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/apq8064-tabla-snd-card_Button_Jack.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/apq8064-tabla-snd-card_Button_Jack.kl \
    $(COMMON_PATH)/configs/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \
    $(COMMON_PATH)/configs/keypad_8960.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/keypad_8960.kl \
    $(COMMON_PATH)/configs/mhl-rcp.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/mhl-rcp.kl \
    $(COMMON_PATH)/configs/pmic8xxx_pwrkey.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/pmic8xxx_pwrkey.kl

# Touchscreen properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.input.noresample=1
