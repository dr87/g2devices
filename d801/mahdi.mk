# Release name
PRODUCT_RELEASE_NAME := d801

# Inherit device configuration
$(call inherit-product, device/lge/d801/d801.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/mahdi/configs/common.mk)
$(call inherit-product, vendor/mahdi/configs/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := d801
PRODUCT_NAME := mahdi_d801
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-D801
PRODUCT_MANUFACTURER := lge

#We use hammerhead intentially to fix some playstore app issues
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="hammerhead-user 4.4.3 KTU84M 1158763 release-keys" \
    BUILD_FINGERPRINT="google/hammerhead/hammerhead:4.4.3/KTU84M/1158763:user/release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/mahdi/prebuilt/bootanimations/BOOTANIMATION-1080x1920.zip:system/media/bootanimation.zip
