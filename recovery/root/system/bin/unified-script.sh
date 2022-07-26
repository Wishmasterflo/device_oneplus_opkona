#!/system/bin/sh
# automatically set device props for unified tree shared-hardware models/variants


load_op9r_global()
{
    resetprop "ro.build.product" "OnePlus9R"
    resetprop "ro.display.series" "OnePlus 9R"
    resetprop "ro.product.device" "OnePlus9R"
    resetprop "ro.product.model" "OnePlus 9R"
    resetprop "ro.product.name" "OnePlus9R"
    resetprop "ro.product.odm.device" "OnePlus9R"
    resetprop "ro.product.odm.model" "OnePlus 9R"
    resetprop "ro.product.odm.name" "OnePlus9R"
    resetprop "ro.product.product.device" "OnePlus9R"
    resetprop "ro.product.product.model" "OnePlus 9R"
    resetprop "ro.product.product.name" "OnePlus9R"
    resetprop "ro.product.system.device" "OnePlus9R"
    resetprop "ro.product.system.model" "OnePlus 9R"
    resetprop "ro.product.system.name" "OnePlus9R"
    resetprop "ro.product.system_ext.device" "OnePlus9R"
    resetprop "ro.product.system_ext.model" "OnePlus 9R"
    resetprop "ro.product.system_ext.name" "OnePlus9R"
    resetprop "ro.product.vendor.device" "OnePlus9R"
    resetprop "ro.product.vendor.model" "OnePlus 9R"
    resetprop "ro.product.vendor.name" "OnePlus9R"
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

project=$(getprop ro.boot.project_codename)
echo "Running unified/variant script with $project..." >> /tmp/recovery.log

case $project in
    lemonades)
        load_op9r
        ;;
    *)
        load_op9r_global
        ;;
esac

exit 0
