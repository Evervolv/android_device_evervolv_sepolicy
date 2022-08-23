# Inherit common stuff
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common.mk)

# Browser
PRODUCT_PACKAGES += \
    Jelly

# Calculator
PRODUCT_PACKAGES += \
    ExactCalculator

# DeviceConfig
PRODUCT_PACKAGES += \
    SimpleDeviceConfig

# Dex preopt
PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUI \
    Launcher3QuickStep

# Email
PRODUCT_PACKAGES += \
    Etar

# Fonts
$(call inherit-product-if-exists, external/google-fonts/lato/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/rubik/fonts.mk)

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# Overlays
PRODUCT_PACKAGES += \
    PlatformDocumentsUIOverlay \
    PlatformLauncher3Overlay \
    PlatformSettingsOverlay \
    PlatformThemePickerOverlay \
    SafetyNetOverlay

# Themes
PRODUCT_PACKAGES += \
    PlatformThemesStub \
    ThemePicker \
    WallpaperPicker