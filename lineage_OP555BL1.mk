# main make File For lineage OS 

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


# Inherit from device makefile
$(call inherit-product, device/oneplus/OP555BL1/device.mk)

# device identifier
PRODUCT_DEVICE := lineage_OP555BL1
PRODUCT_NAME := OP555BL1
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus Nord Ce 2 5G
PRODUCT_MANUFACTURER := OnePlus

# inherit some common lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# build info
BUILD_FINGERPRINT := OnePlus/IV2201/OP555BL1:11/RP1A.200720.011/1655212189936:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OP555BL1 \
    PRODUCT_NAME=OP555BL1 \
    PRIVATE_BUILD_DESC="sys_oplus_mssi_64_user 11 RP1A.200720.011 1655212189936 release-keys


PRODUCT_GMS_CLIENTID_BASE := android-oneplus


PRODUCT_BUILD_PROP_OVERRIDES += \
       ro.build.fingerprint=$(BUILD_FINGERPRINT)
