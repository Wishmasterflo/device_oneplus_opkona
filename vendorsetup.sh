export TARGET_ARCH="arm64-v8a"

# Some about us
#export FOX_VARIANT="A12"
export FOX_VERSION="R12.1"
export OF_MAINTAINER=Wishmasterflo

# Build environment stuffs
export FOX_BUILD_DEVICE="OnePlus8T"
export ALLOW_MISSING_DEPENDENCIES=true
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export LC_ALL="C"
export TARGET_DEVICE_ALT="kebab, Kebab, instantnoodle, instantnoodlep, lemonades, lemonkebab, OnePlus8, OnePlus 8, OnePlus8t, OnePlus 8t, OnePlus 8 Pro"
export OF_TARGET_DEVICES="kebab, Kebab, instantnoodle, instantnoodlep, lemonades, lemonkebab, OnePlus8, OnePlus 8, OnePlus8t, OnePlus 8t, OnePlus 8 Pro"

# Use magisk boot for patching
export OF_USE_MAGISKBOOT=1
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
export OF_DONT_PATCH_ENCRYPTED_DEVICE=1

# We have a/b partitions
export OF_AB_DEVICE=1
export OF_VIRTUAL_AB_DEVICE=1
export OF_AB_DEVICE_WITH_RECOVERY_PARTITION=1

# Screen specifications
#export OF_SCREEN_H=1920
#export OF_SCREEN_W=1080
#export OF_STATUS_H=100
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48
export OF_ALLOW_DISABLE_NAVBAR=0
export OF_CLOCK_POS=0

# Device stuff
export OF_KEEP_FORCED_ENCRYPTION=1
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export OF_FBE_METADATA_MOUNT_IGNORE=1
export OF_PATCH_AVB20=1

# Run a process after formatting data to work-around MTP issues
export OF_RUN_POST_FORMAT_PROCESS=1

# OTA for custom ROMs
export OF_SUPPORT_ALL_PAYLOAD_OTA_UPDATES=1
export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=1
export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1

# OTA
export OF_KEEP_DM_VERITY=1
export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=1
export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1
export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1
export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=0

# For some reason this is dumb and necessary
export FOX_BUGGED_AOSP_ARB_WORKAROUND="1601559499"

# -- add settings for R12.1 --
export OF_QUICK_BACKUP_LIST="/boot;/data;/super;"

# -- add settings for Android 12 --
# export OF_FIX_DECRYPTION_ON_DATA_MEDIA=1

# Add some extras
export FOX_USE_ZIP_BINARY=1
export FOX_USE_TAR_BINARY=1
export FOX_ASH_IS_BASH=1
export FOX_REPLACE_BUSYBOX_PS=1
export FOX_USE_BASH_SHELL=1
export FOX_USE_LZMA_COMPRESSION=1
export FOX_USE_NANO_EDITOR=1
export OF_DONT_KEEP_LOG_HISTORY=1
export OF_NO_SPLASH_CHANGE=1