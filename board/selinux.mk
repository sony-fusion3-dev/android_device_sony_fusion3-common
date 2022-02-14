# Common sepolicies
#BOARD_SEPOLICY_DIRS += \
#    $(COMMON_PATH)/sepolicy
BOARD_SEPOLICY_DIRS += $(COMMON_PATH)/sepolicy-minimal
SELINUX_IGNORE_NEVERALLOWS := true

# LineageOS legacy sepolicies
#include device/qcom/sepolicy-legacy/sepolicy.mk
