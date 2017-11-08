PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    keyguard.no_require_sim=true

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.selinux=1

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.sys.disable_rescue=true

PRODUCT_COPY_FILES += \
    $(SRC_EVERVOLV_DIR)/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    $(SRC_EVERVOLV_DIR)/prebuilt/common/bin/sysinit:system/bin/sysinit

# Backup tool
PRODUCT_COPY_FILES += \
    $(SRC_EVERVOLV_DIR)/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    $(SRC_EVERVOLV_DIR)/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    $(SRC_EVERVOLV_DIR)/prebuilt/common/bin/50-backup.sh:system/addon.d/50-backup.sh

# Init file
PRODUCT_PACKAGES += \
    init.evervolv.rc

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    $(SRC_EVERVOLV_DIR)/prebuilt/common/etc/mkshrc:system/etc/mkshrc

# Overlays
PRODUCT_PACKAGE_OVERLAYS += $(SRC_EVERVOLV_DIR)/overlay

# Branding
include $(SRC_EVERVOLV_DIR)/config/branding.mk

# Packages
include $(SRC_EVERVOLV_DIR)/config/packages.mk

# Sounds
$(call inherit-product-if-exists, vendor/google/GoogleAudio.mk)
