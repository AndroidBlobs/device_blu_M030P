# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from M030P device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := blu
PRODUCT_DEVICE := M030P
PRODUCT_MANUFACTURER := blu
PRODUCT_NAME := lineage_M030P
PRODUCT_MODEL := M6

PRODUCT_GMS_CLIENTID_BASE := android-blu
TARGET_VENDOR := blu
TARGET_VENDOR_PRODUCT_NAME := M030P
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="M6-user 8.1.0 O11019 1557213970 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := BLU/M6/M030P:8.1.0/O11019/1557213970:user/release-keys
