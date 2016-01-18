LOCAL_PATH := device/meizu/mx5
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
# Kernel init
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif
PRODUCT_COPY_FILES += \
$(LOCAL_KERNEL):kernel

$(call inherit-product-if-exists, vendor/meizu/mx5/mx5.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Boot animation and device
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOTANIMATION_NAME := 1080
PRODUCT_DEFAULT_LANGUAGE := ru
PRODUCT_DEFAULT_REGION := RU
PRODUCT_NAME := mx5
PRODUCT_DEVICE := mx5
PRODUCT_BRAND := meizu
PRODUCT_MANUFACTURER := meizu
PRODUCT_MODEL := mx5
