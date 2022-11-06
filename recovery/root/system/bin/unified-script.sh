#!/system/bin/sh
# automatically set device props for unified tree shared-hardware models/variants


load_op8()
{
    resetprop "ro.build.product" "OnePlus8"
    resetprop "ro.display.series" "OnePlus 8"
    resetprop "ro.product.device" "OnePlus8"
    resetprop "ro.product.model" "OnePlus 8"
    resetprop "ro.product.name" "OnePlus8"
    resetprop "ro.product.odm.device" "OnePlus8"
    resetprop "ro.product.odm.model" "OnePlus 8"
    resetprop "ro.product.odm.name" "OnePlus8"
    resetprop "ro.product.product.device" "OnePlus8"
    resetprop "ro.product.product.model" "OnePlus 8"
    resetprop "ro.product.product.name" "OnePlus8"
    resetprop "ro.product.system.device" "OnePlus8"
    resetprop "ro.product.system.model" "OnePlus 8"
    resetprop "ro.product.system.name" "OnePlus8"
    resetprop "ro.product.system_ext.device" "OnePlus8"
    resetprop "ro.product.system_ext.model" "OnePlus 8"
    resetprop "ro.product.system_ext.name" "OnePlus8"
    resetprop "ro.product.vendor.device" "OnePlus8"
    resetprop "ro.product.vendor.model" "OnePlus 8"
    resetprop "ro.product.vendor.name" "OnePlus8"
}

load_op8t()
{
    resetprop "ro.build.product" "OnePlus8T"
    resetprop "ro.display.series" "OnePlus 8T"
    resetprop "ro.product.device" "OnePlus8T"
    resetprop "ro.product.model" "OnePlus 8T"
    resetprop "ro.product.name" "OnePlus8T"
    resetprop "ro.product.odm.device" "OnePlus8T"
    resetprop "ro.product.odm.model" "OnePlus 8T"
    resetprop "ro.product.odm.name" "OnePlus8T"
    resetprop "ro.product.product.device" "OnePlus8T"
    resetprop "ro.product.product.model" "OnePlus 8T"
    resetprop "ro.product.product.name" "OnePlus8T"
    resetprop "ro.product.system.device" "OnePlus8T"
    resetprop "ro.product.system.model" "OnePlus 8T"
    resetprop "ro.product.system.name" "OnePlus8T"
    resetprop "ro.product.system_ext.device" "OnePlus8T"
    resetprop "ro.product.system_ext.model" "OnePlus 8T"
    resetprop "ro.product.system_ext.name" "OnePlus8T"
    resetprop "ro.product.vendor.device" "OnePlus8T"
    resetprop "ro.product.vendor.model" "OnePlus 8T"
    resetprop "ro.product.vendor.name" "OnePlus8T"
}

load_op8pro()
{
    resetprop "ro.build.product" "OnePlus8Pro"
    resetprop "ro.display.series" "OnePlus 8Pro"
    resetprop "ro.product.device" "OnePlus8PRO"
    resetprop "ro.product.model" "OnePlus 8 Pro"
    resetprop "ro.product.name" "OnePlus8Pro_IND"
    resetprop "ro.product.odm.device" "OnePlus8Pro"
    resetprop "ro.product.odm.model" "OnePlus 8Pro"
    resetprop "ro.product.odm.name" "OnePlus8Pro_IND"
    resetprop "ro.product.product.device" "OnePlus8Pro"
    resetprop "ro.product.product.model" "OnePlus 8Pro"
    resetprop "ro.product.product.name" "OnePlus8Pro_IND"
    resetprop "ro.product.system.device" "OnePlus8Pro"
    resetprop "ro.product.system.model" "OnePlus 8Pro"
    resetprop "ro.product.system.name" "OnePlus8Pro_IND"
    resetprop "ro.product.system_ext.device" "OnePlus8Pro"
    resetprop "ro.product.system_ext.model" "OnePlus 8Pro"
    resetprop "ro.product.system_ext.name" "OnePlus8Pro_IND"
    resetprop "ro.product.vendor.device" "OnePlus8Pro"
    resetprop "ro.product.vendor.model" "OnePlus 8Pro"
    resetprop "ro.product.vendor.name" "OnePlus8Pro_IND"
}

load_op9r()
{
    resetprop "ro.build.product" "OnePlus9R"
    resetprop "ro.display.series" "OnePlus 9R"
    resetprop "ro.product.device" "OnePlus9R"
    resetprop "ro.product.model" "OnePlus 9R"
    resetprop "ro.product.name" "OnePlus9R_IND"
    resetprop "ro.product.odm.device" "OnePlus9R"
    resetprop "ro.product.odm.model" "OnePlus 9R"
    resetprop "ro.product.odm.name" "OnePlus9R_IND"
    resetprop "ro.product.product.device" "OnePlus9R"
    resetprop "ro.product.product.model" "OnePlus 9R"
    resetprop "ro.product.product.name" "OnePlus9R_IND"
    resetprop "ro.product.system.device" "OnePlus9R"
    resetprop "ro.product.system.model" "OnePlus 9R"
    resetprop "ro.product.system.name" "OnePlus9R_IND"
    resetprop "ro.product.system_ext.device" "OnePlus9R"
    resetprop "ro.product.system_ext.model" "OnePlus 9R"
    resetprop "ro.product.system_ext.name" "OnePlus9R_IND"
    resetprop "ro.product.vendor.device" "OnePlus9R"
    resetprop "ro.product.vendor.model" "OnePlus 9R"
    resetprop "ro.product.vendor.name" "OnePlus9R_IND"
}

project=$(getprop ro.boot.prj_version)
echo "Running unified/variant script with $project..." >> /tmp/recovery.log

case $project in
    20828)
        load_op9r
        ;;
    19821)
	load_op8
	;;
    19811)
        load_op8pro
        ;;		
    *)
        load_op8t
        ;;
esac

exit 0
