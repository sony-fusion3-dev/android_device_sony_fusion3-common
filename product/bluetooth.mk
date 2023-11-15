# Bluetooth packages
PRODUCT_PACKAGES += \
    init.qcom.bt.sh

# Bluetooth properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bt.bdaddr_path=/data/misc/bluetooth/bdaddr \
    ro.qualcomm.bt.hci_transport=smd \
    bluetooth.core.le.vendor_capabilities.enabled=false \
    bluetooth.device.class_of_device=90,2,12 \
    bluetooth.profile.asha.central.enabled?=true \
    bluetooth.profile.a2dp.source.enabled?=true \
    bluetooth.profile.avrcp.target.enabled?=true \
    bluetooth.profile.bas.client.enabled?=true \
    bluetooth.profile.gatt.enabled?=true \
    bluetooth.profile.hfp.ag.enabled?=true \
    bluetooth.profile.hid.device.enabled?=true \
    bluetooth.profile.hid.host.enabled?=true \
    bluetooth.profile.map.server.enabled?=true \
    bluetooth.profile.opp.enabled?=true \
    bluetooth.profile.pan.nap.enabled?=true \
    bluetooth.profile.pan.panu.enabled?=true \
    bluetooth.profile.pbap.server.enabled?=true \
    bluetooth.profile.sap.server.enabled?=true
