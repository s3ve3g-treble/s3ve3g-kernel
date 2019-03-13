#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=~/android/lineage-15.1/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin/arm-eabi-
mkdir output

make -C $(pwd) O=output lineageos_s3ve3g_defconfig
make -C $(pwd) O=output -j4

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
