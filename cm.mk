$(call inherit-product, device/htc/endeavoru/full_endeavoru.mk)

# Release name
PRODUCT_RELEASE_NAME := endeavoru

#bootanimation
PRODUCT_COPY_FILES += \
        vendor/aocp/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip

#OTA
PRODUCT_COPY_FILES += \
        vendor/aocp/prebuilt/common/app/xhdpi/AoCPOTA.apk:system/app/AoCPOTA.apk

# Inherit some common CM stuff.
$(call inherit-product, vendor/aocp/configs/common_phone.mk)
$(call inherit-product, vendor/aocp/configs/gsm.mk)

# Required Packages
PRODUCT_PACKAGES += \
    Camera \
    NFC

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=endeavoru BUILD_FINGERPRINT="htc_europe/endeavoru/endeavoru:4.0.4/IMM76D/89015.2:user/release-keys" PRIVATE_BUILD_DESC="2.17.401.2 CL89015 release-keys"

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := endeavoru
PRODUCT_NAME := aocp_endeavoru
PRODUCT_BRAND := htc_europe
PRODUCT_MODEL := HTC One X
PRODUCT_MANUFACTURER := HTC
