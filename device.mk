$(call inherit-product-if-exists, vendor/lge/vs840/vs840-vendor.mk)

include device/lge/iproj/device.mk

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Bluetooth
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/init.qcom.bt.sh:system/bin/init.qcom.bt.sh

## Ramdisk
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/root/init.iproj.rc:root/init.iproj.rc \
	$(LOCAL_PATH)/prebuilt/root/init.iproj.usb.rc:root/init.iproj.usb.rc \
	$(LOCAL_PATH)/prebuilt/root/init.qcom.sh:root/init.qcom.sh \
	$(LOCAL_PATH)/prebuilt/root/sbin/chargerlogo:root/sbin/chargerlogo \
	$(LOCAL_PATH)/prebuilt/root/chargerimages/battery_charging_01.png:root/chargerimages/battery_charging_01.png \
	$(LOCAL_PATH)/prebuilt/root/chargerimages/battery_charging_02.png:root/chargerimages/battery_charging_02.png \
	$(LOCAL_PATH)/prebuilt/root/chargerimages/battery_charging_03.png:root/chargerimages/battery_charging_03.png \
	$(LOCAL_PATH)/prebuilt/root/chargerimages/battery_charging_04.png:root/chargerimages/battery_charging_04.png \
	$(LOCAL_PATH)/prebuilt/root/chargerimages/battery_charging_05.png:root/chargerimages/battery_charging_05.png \
	$(LOCAL_PATH)/prebuilt/root/chargerimages/battery_charging_06.png:root/chargerimages/battery_charging_06.png \
	$(LOCAL_PATH)/prebuilt/root/chargerimages/battery_wait_01.png:root/chargerimages/battery_wait_01.png \
	$(LOCAL_PATH)/prebuilt/root/chargerimages/battery_wait_02.png:root/chargerimages/battery_wait_02.png \
	$(LOCAL_PATH)/prebuilt/root/chargerimages/battery_charging_warning.png:root/chargerimages/battery_charging_warning.png \
	$(LOCAL_PATH)/prebuilt/root/chargerimages/bg_wireless.png:root/chargerimages/bg_wireless.png \
	$(LOCAL_PATH)/prebuilt/root/ueventd.iproj.rc:root/ueventd.iproj.rc

# Recovery
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

# Sim ToolKit
PRODUCT_PACKAGES += \
	Stk

