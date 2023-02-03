## OrangeFox Recovery Project Oneplus 8 series & 9R Changelog

# 03-Feb-2023 OrangeFox R12.1 V15 beta
 - Switched to Meteoric Kernel on OOS13 Version
 - Fixed USB file Transfer on OOS13 Version

# 16-Jan-2023 OrangeFox R12.1 V14
 - Fixed file formatting from Windows to Linux which was causing file issues in the device tree
 - Added a Magisk flashable Module for Orangefox (thanks to MeHigh.G)

# 15-Jan-2023 OrangeFox R12.1 V14 beta
 - Updated Version with OOS13 F19 OP9R Kernel
 - Synced with latest fox_12.1 changes
 - Fixed props settings for the different Kona devices

# 21-Nov-2022 OrangeFox R12.1 V14 beta
 - Adjusted unified script for OP8 and 8Pro
 - Updated Version with OOS12 c36 Kernel
 - Updated Version with OOS13 F13 Kernel
 - Updated Version with EROFS Kernel Update

# 12-Nov-2022 OrangeFox R12.1 V13
 - Synced with latest fox_12.1 changes
 - Added Support for Oneplus 8 and Oneplus 8 Pro (data decryption only working when using a FBEv2 ROM!)
 - Some adjustments to the EROFS Version of Orangefox
 - Adjusted the length of the Orangefox Filename to better see them on mobile devices
 - disabled the reflash function in Orangefox
 - disabled the splash screen changing
 - Changed splash screen background color to black
 - Exclude /data/fonts from Backup to avoid errors during Backup

# 18-Oct-2022 OrangeFox R12.1 V12
 - Synced with latest fox_12.1 changes
 - Updated Version with OOS13 OB1 Kernel
 - Updated Version with OOS12 c35 Kernel

# 05-Oct-2022 OrangeFox R12.1 V11
 - Synced with latest fox_12.1 changes
 - Fixed that storage was not detected from Computer on the EROFS Version
 - Updated the Magisk addon to Magisk 25.2

# 02-Oct-2022 OrangeFox R12.1 V10
 - Synced with latest fox_12.1 changes
 - Build a seperate Orangefox Version for ROMs with EROFS Filesystem

# 25-Sep-2022 OrangeFox R12.1 V9
 - Synced with latest fox_12.1 changes
 - Updated to OOS12 c33 Kernel

# 13-Sep-2022 OrangeFox R12.1 V8
 - Synced with latest fox_12.1 changes

# 02-Sep-2022 OrangeFox R12.1 V7
 - Synced with latest fox_12.1 changes
 
# 23-Aug-2022 OrangeFox R12.1 V6
 - This Orangefox Version should only be flashed to recovery when on OOS12 Firmware!
 - Synced with latest fox_12.1 changes
 - Added decryption for Android 13
 - Fixed OOS flashing from recovery
 - removed lockscreen timeout
 - lowered default screen brightness

# 18-Aug-2022 OrangeFox R12.1 V5
 - fixed adb sideload

# 15-Aug-2022 OrangeFox R12.1 V4
 - Updated with latest fox_12.1 changes

# 03-Aug-2022 OrangeFox R12.1 V3
 - Minor fixes and changes
 - Updated OOS12 Kernel
 - Merged latest TWRP 12.1 Changes

# 27-July-2022 OrangeFox R12.1 V2
 - This Version should be unified now to work on the Oneplus 8t and 9r
 - Updated with changes from new TWRP 3.6.2-12
 - Based on OOS12 now
 - fixed decryption of Data when on Android 12

# 17-July-2022 OrangeFox R12.1 
 - Added support for Android 12 and synced with latest TWRP 12.1 sources


# Device Tree for Oneplus 8T (kebab) / 9R (lemonades) for TWRP

## Setup repo tool
Setup repo tool from here https://source.android.com/setup/develop#installing-repo

## Compile

Sync TWRP manifest:

```
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1

```

Make a directory named local_manifest under .repo, and create a new manifest file, for example local_manifests.xml
and then paste the following

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <remove-project name="platform/external/erofs-utils" />
  <project path="external/erofs-utils" name="platform/external/erofs-utils" remote="aosp" revision="master" />

  <remove-project name="android_bootable_recovery" />
  <project path="bootable/recovery" name="ApexLegend007/android_bootable_recovery" remote="github" revision="android-12.1" />

  <remove-project name="android_build" />
  <project path="build/make" name="ApexLegend007/android_build" remote="github" revision="android-12.1">
    <copyfile src="core/root.mk" dest="Makefile"/>
    <linkfile src="CleanSpec.mk" dest="build/CleanSpec.mk"/>
    <linkfile src="buildspec.mk.default" dest="build/buildspec.mk.default"/>
    <linkfile src="core" dest="build/core"/>
    <linkfile src="envsetup.sh" dest="build/envsetup.sh"/>
    <linkfile src="target" dest="build/target"/>
    <linkfile src="tools" dest="build/tools"/>
  </project>

  <project path="device/oneplus/kebab" name="ApexLegend007/twrp_device_oneplus_lemonades" remote="github" revision="android-12.1" />
</manifest>
```
You might need to pick few patches from gerrit.twrp.me to get some stuff working.

Sync the sources with

```
repo sync -j$(nproc --all)
```

To build, execute this command:

```
. build/envsetup.sh; export ALLOW_MISSING_DEPENDENCIES=true; export LC_ALL=C; lunch twrp_lemonades-eng; make -j$(nproc --all) adbd recoveryimage
```

To test it:

```
# To temporarily boot it
fastboot boot out/target/product/lemonades/recovery.img 

# Since 8T/9R have a separate recovery partition, you can flash the recovery with
fastboot flash recovery recovery.img
```

Kernel: https://github.com/LineageOS/android_kernel_oneplus_sm8250

##### Credits
- ApexLegend007 for Android 12.1 device Tree
- The-Incognito for Recovery Trees of Oneplus 8T
- YumeMichi For Implementing Erofs and Other Misc
- bigbiff for decryption
- Pranav Talmale for decryption
- Systemad for original tree
- CaptainThrowback for original tree
- mauronofrio for original tree
- TWRP team
- OrangeFox team
- Qnorsten for OOS fix
