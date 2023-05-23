#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/oneplus/OP555BL1

call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

#TODO: check parts makefile

PRODUCT_SHIPPING_API_LEVEL := 30

# call proprietary blob setup
$(call inherit-product-if-exists, vendor/oneplus/OP555BL1/OP555BL1-vendor.mk)

# dynamic partition
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false

# boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# A/B
AB_OTA_UPDATER := false

# audio
PRODUCT_PACKAGES += \
    audio.a2dp.default

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PLATFORM_VNDK_VERSION)/etc/audio_policy_configuration.xml

#TODO: test if this is available
# fastbootd
PRODUCT_PACKAGES += \
    fastbootd

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/etc/fstab.mt6893:$(TARGET_COPY_OUT_RAMDISK)/fstab.mt6877
    
    
# fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.OP555BL1
    
# screen density
PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.OP555BL1

# overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay \
    $(DEVICE_PATH)/overlay-lineage

# permissions
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/permissions/privapp-permissions-mediatek.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-mediatek.xml

# recovery
PRODUCT_PACKAGES += \
    init.recovery.mt6877.rc

#TODO: test if this is available
# rc's service
PRODUCT_PACKAGES += \
    com.android.ims.rcsmanager \
    RcsService \
    PresencePolling

# soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# system prop
-include $(DEVICE_PATH)/system_prop.mk
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true

# symbol (libshim)
PRODUCT_PACKAGES += \
    libshim_vtservice

#TODO: test if this is available
# telephony
PRODUCT_BOOT_JARS += \
    mediatek-common \
    mediatek-framework \
    mediatek-ims-base \
    mediatek-ims-common \
    mediatek-telecom-common \
    mediatek-telephony-base \
    mediatek-telephony-common

PRODUCT_PACKAGES += \
    ImsServiceBase

# wifi
PRODUCT_PACKAGES += \
    TetheringConfigOverlay \
    WifiOverlay \
    DozeOverlaySystem \
    DozeOverlaySystemUI