# Common sepolicies
BOARD_SEPOLICY_DIRS += \
    $(COMMON_PATH)/sepolicy

# LineageOS legacy sepolicies
include device/qcom/sepolicy-legacy/sepolicy.mk
