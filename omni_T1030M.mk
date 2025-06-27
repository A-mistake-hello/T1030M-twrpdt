# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk) # vab加载到vendor boot里使用

# Inherit from TWRP product configuration
$(call inherit-product, vendor/twrp/config/common.mk) # twrp-9分支改为onmi

# Device specific configs
$(call inherit-product, device/alldocube/T1030M/device.mk)

# Device identifier
PRODUCT_DEVICE := T1030M # 设备型号
PRODUCT_NAME := omni_T1030M # 设备名称
PRODUCT_BRAND := Alldocube # 自定义品牌，如果有
PRODUCT_MODEL := iPlay 50 Pro # 产品最终用户可见名称
PRODUCT_MANUFACTURER := alldocube # 制造商

PRODUCT_PROPERTY_OVERRIDES += ro.twrp.vendor_boot=true

PRODUCT_GMS_CLIENTID_BASE := android-alldocube

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_T1030M-user 12 SP1A.210812.016 734_735-42 release-keys"

BUILD_FINGERPRINT := alldocube/vnd_T1030M/T1030M:12/SP1A.210812.016/734_735-42:user/release-keys
