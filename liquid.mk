## Specify phone tech before including full_phone
$(call inherit-product, vendor/liquid/configs/gsm.mk)

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/bootanimations/BOOTANIMATION-1280x768.zip:system/media/bootanimation.zip

TARGET_KERNEL_CONFIG := geeb_defconfig

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/liquid/configs/common_full_phone.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/geeb/liquid_geeb.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := geeb
PRODUCT_NAME := liquid_geeb
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-geeb
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=google/occam/mako:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2.2 JDQ39 573038 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
