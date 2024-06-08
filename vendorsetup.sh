#!/bin/bash

PWDIR=$(pwd)

if [ -d "vendor/xiaomi/miuicamera-mayfly" ]; then
    echo "vendor/xiaomi/miuicamera-mayfly: done"
else
    git clone -b lineage-21 https://github.com/dopaemon/android_vendor_xiaomi_miuicamera-mayfly.git vendor/xiaomi/miuicamera-mayfly
fi

if [ -d "device/xiaomi/miuicamera-mayfly" ]; then
    echo "device/xiaomi/miuicamera-mayfly: done"
else
    git clone -b lineage-21 https://github.com/dopaemon/android_device_xiaomi_miuicamera-mayfly.git device/xiaomi/miuicamera-mayfly
fi

if [ -d "hardware/xiaomi" ]; then
    echo "hardware/xiaomi: done"
else
    git clone -b lineage-21 --single-branch https://github.com/LineageOS/android_hardware_xiaomi.git hardware/xiaomi
fi

if [ -d "kernel/xiaomi/sm8450" ]; then
    echo "kernel/xiaomi/sm8450: done"
else
    git clone -b lineage-21 --single-branch https://github.com/dopaemon/android_kernel_xiaomi_sm8450.git kernel/xiaomi/sm8450
fi

if [ -d "kernel/xiaomi/sm8450/KernelSU" ]; then
    echo "KernelSU: done"
else
    cd kernel/xiaomi/sm8450
    rm -rf KernelSU
    git submodule add -f https://github.com/tiann/KernelSU.git KernelSU
    cd $PWDIR
fi

if [ -d "kernel/xiaomi/sm8450-devicetrees" ]; then
    echo "kernel/xiaomi/sm8450-devicetrees: done"
else
    git clone -b lineage-21 --single-branch https://github.com/cupid-development/android_kernel_xiaomi_sm8450-devicetrees.git kernel/xiaomi/sm8450-devicetrees
fi

if [ -d "kernel/xiaomi/sm8450-modules" ]; then
    echo "kernel/xiaomi/sm8450-modules: done"
else
    git clone -b lineage-21 --single-branch https://github.com/cupid-development/android_kernel_xiaomi_sm8450-modules.git kernel/xiaomi/sm8450-modules
fi

if [ -d "device/xiaomi/sm8450-common" ]; then
    echo "device/xiaomi/sm8450-common: done"
else
    git clone -b lineage-21 --single-branch https://github.com/dopaemon/android_device_xiaomi_sm8450-common.git device/xiaomi/sm8450-common
fi

if [ -d "vendor/xiaomi/sm8450-common" ]; then
    echo "vendor/xiaomi/sm8450-common: done"
else
    git clone -b lineage-21 --single-branch https://github.com/dopaemon/android_vendor_xiaomi_sm8450-common.git vendor/xiaomi/sm8450-common
fi

if [ -d "vendor/xiaomi/unicorn" ]; then
    echo "vendor/xiaomi/unicorn: done"
else
    git clone -b lineage-21 --single-branch https://github.com/dopaemon/android_vendor_xiaomi_unicorn.git vendor/xiaomi/unicorn
fi

if [ -e "vendor/xiaomi/unicorn/proprietary/vendor/lib64/libxmi_high_dynamic_range_cdsp.so" ]; then
    echo "libxmi_high_dynamic_range_cdsp.so: done"
else
    wget -O vendor/xiaomi/unicorn/proprietary/vendor/lib64/libxmi_high_dynamic_range_cdsp.so https://sourceforge.net/projects/android-unofficial/files/Android-14/unicorn/vendor/libxmi_high_dynamic_range_cdsp.so
fi

if [ -e "vendor/xiaomi/unicorn/radio/modem.img" ]; then
    echo "modem.img: done"
else
    wget -O vendor/xiaomi/unicorn/radio/modem.img https://sourceforge.net/projects/android-unofficial/files/Android-14/unicorn/vendor/modem.img
fi

if [ -e "vendor/xiaomi/unicorn/radio/vm-bootsys.img" ]; then
    echo "vm-bootsys.img: done"
else
    wget -O vendor/xiaomi/unicorn/radio/vm-bootsys.img https://sourceforge.net/projects/android-unofficial/files/Android-14/unicorn/vendor/vm-bootsys.img
fi

if [ -e "vendor/xiaomi/miuicamera-mayfly/proprietary/system/priv-app/MiuiCamera/MiuiCamera.apk" ]; then
    echo "vendor/xiaomi/miuicamera-mayfly/proprietary/system/priv-app/MiuiCamera/MiuiCamera.apk: done"
else
    wget -O vendor/xiaomi/miuicamera-mayfly/proprietary/system/priv-app/MiuiCamera/MiuiCamera.apk https://github.com/dopaemon/android_vendor_xiaomi_miuicamera-mayfly/releases/download/lineage-21/MiuiCamera.apk
fi
