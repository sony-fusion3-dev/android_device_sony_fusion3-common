# Vendor Interface Manifest
DEVICE_MANIFEST_FILE := $(COMMON_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(COMMON_PATH)/compatibility_matrix.xml
PRODUCT_ENFORCE_VINTF_MANIFEST_OVERRIDE := true

ifneq ($(BOARD_HAVE_RADIO),false)
DEVICE_MANIFEST_FILE += $(COMMON_PATH)/manifest_radio.xml
endif
