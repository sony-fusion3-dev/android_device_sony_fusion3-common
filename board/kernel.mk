# Kernel informations
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=msm_sdcc.1
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000

# Memfd
TARGET_HAS_MEMFD_BACKPORT := true

# Serial console
BOARD_ENABLE_SERIAL_CONSOLE := false
ifeq ($(BOARD_ENABLE_SERIAL_CONSOLE),true)
BOARD_KERNEL_CMDLINE += console=ttyHSL0,115200,n8
endif

# Kernel properties
TARGET_KERNEL_SOURCE := kernel/sony/apq8064
