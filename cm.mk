$(call inherit-product, device/meizu/mx5/mx5.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mx5
PRODUCT_NAME := mx5
PRODUCT_BRAND := meizu
PRODUCT_MODEL := mx5
PRODUCT_MANUFACTURER := meizu
