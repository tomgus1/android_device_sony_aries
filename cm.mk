# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit AOSP Shinano device parts
$(call inherit-product, device/sony/z3c/aosp_d5803.mk)

# Inherit CM Shinano device parts
$(call inherit-product, device/sony/shinano/platform2.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Fingerprint for aries (from stock)
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D5803 \
                                BUILD_FINGERPRINT="Sony/D5803/D5803:6.0.1/23.5.A.1.291/2769308465:user/release-keys" \
                                PRIVATE_BUILD_DESC="D5803-user 6.0.1 23.5.A.1.291 2769308465 release-keys"

# Override Product Name for crDroid
PRODUCT_NAME := cm_z3c
PRODUCT_MODEL := Xperia Z3 Compact
TARGET_DEVICE := aries