# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/orion/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/orion/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/clark/aosp_clark.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/clark/overlay

## Device identifier. This must come after all inclusions
PRODUCT_NAME := orion_clark
PRODUCT_BRAND := Android
PRODUCT_MODEL := XT1575
PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
	BUILD_FINGERPRINT="motorola/clark_retus/clark:6.0/MPH24.49-18/18:user/release-keys" \
	PRIVATE_BUILD_DESC="clark_retus-user 6.0 MPH24.49-18 18 release-keys"
