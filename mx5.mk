LOCAL_PATH := device/meizu/mx5
PRODUCT_AAPT_PREF_CONFIG := Full HD
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/zImage:kernel 

$(call inherit-product-if-exists, vendor/meizu/mx5/mx5.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

PRODUCT_NAME := mx5
PRODUCT_DEVICE := mx5
PRODUCT_BRAND := meizu
PRODUCT_MANUFACTURER := meizu
PRODUCT_MODEL := mx5