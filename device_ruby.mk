#
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# common msm8660 configs
$(call inherit-product, device/htc/msm8660-common/msm8660.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/ruby/overlay

# GPS
PRODUCT_PACKAGES += \
    gps.ruby

# NFC
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# Wifi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd.conf \
    wpa_supplicant.conf \
    tiwlan.ini \
    TQS_D_1.7.ini \
    TQS_D_1.7_127x.ini \
    calibrator

# wifi firmware
PRODUCT_COPY_FILES += \
    device/htc/ruby/firmware/ti-connectivity/wl127x-fw-4-mr.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-mr.bin \
    device/htc/ruby/firmware/ti-connectivity/wl127x-fw-4-plt.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-plt.bin \
    device/htc/ruby/firmware/ti-connectivity/wl127x-fw-4-sr.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-sr.bin \
    device/htc/ruby/firmware/ti-connectivity/wl1271-nvs.bin:system/etc/firmware/ti-connectivity/wl1271-nvs.bin \
    device/htc/ruby/firmware/fmc_init_1273.2.bts:system/etc/firmware/fmc_init_1273.2.bts \
    device/htc/ruby/firmware/fm_rx_init_1273.2.bts:system/etc/firmware/fm_rx_init_1273.2.bts \
    device/htc/ruby/firmware/htc_1271fw.bin:system/etc/firmware/htc_1271fw.bin \
    device/htc/ruby/firmware/htc_1271fw_196_header.bin:system/etc/firmware/htc_1271fw_196_header.bin \
    device/htc/ruby/firmware/TIInit_7.6.15.bts:system/etc/firmware/TIInit_7.6.15.bts \
    device/htc/ruby/firmware/WL127x_2.0_2.25.bts:system/etc/firmware/WL127x_2.0_2.25.bts \
    device/htc/ruby/firmware/vac_config.ini:system/etc/firmware/vac_config.ini \
    device/htc/ruby/firmware/version:system/etc/firmware/version \
    device/htc/ruby/firmware/firmware.bin:system/etc/wifi/firmware.bin \
    device/htc/ruby/firmware/firmware_ap.bin:system/etc/wifi/firmware_ap.bin

# Ramdisk files
PRODUCT_COPY_FILES += \
    device/htc/ruby/ramdisk/fstab.ruby:root/fstab.ruby \
    device/htc/ruby/ramdisk/init.qcom.sh:root/init.qcom.sh \
    device/htc/ruby/ramdisk/init.ruby.rc:root/init.ruby.rc \
    device/htc/ruby/ramdisk/init.ruby.usb.rc:root/init.ruby.usb.rc \
    device/htc/ruby/ramdisk/ueventd.ruby.rc:root/ueventd.ruby.rc

# recovery and custom charging
PRODUCT_COPY_FILES += \
    device/htc/ruby/recovery/root/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/ruby/recovery/root/sbin/power_test:recovery/root/sbin/power_test \
    device/htc/ruby/recovery/root/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/ruby/recovery/root/sbin/detect_key:recovery/root/sbin/detect_key \
    device/htc/ruby/recovery/root/sbin/htcbatt:recovery/root/sbin/htcbatt

# Scripts
PRODUCT_COPY_FILES += \
    device/htc/ruby/scripts/01bluetooth:system/etc/init.d/01bluetooth

# Vold
PRODUCT_COPY_FILES += \
    device/htc/ruby/vold.fstab:system/etc/vold.fstab

# HTC BT audio config
PRODUCT_COPY_FILES += \
    device/htc/holiday/dsp/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/holiday/dsp/A1026_CFG.csv:system/etc/A1026_CFG.csv \
    device/htc/holiday/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/holiday/dsp/AdieHWCodec_BEATS_HW.csv:system/etc/AdieHWCodec_BEATS_HW.csv \
    device/htc/holiday/dsp/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    device/htc/holiday/dsp/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/htc/holiday/dsp/AIC3254_REG_DualMic.txt:system/etc/AIC3254_REG_DualMic.txt \
    device/htc/holiday/dsp/AIC3254_REG_DualMic_WA.txt:system/etc/AIC3254_REG_DualMic_WA.txt \
    device/htc/holiday/dsp/AIC3254_REG_DualMic_XD.csv:system/etc/AIC3254_REG_DualMic_XD.csv \
    device/htc/holiday/dsp/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/htc/holiday/dsp/CodecDSPID_WA.txt:system/etc/CodecDSPID_WA.txt \
    device/htc/holiday/dsp/CodecDSPID_WB.txt:system/etc/CodecDSPID_WB.txt \
    device/htc/holiday/dsp/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    device/htc/holiday/dsp/TPA2051_CFG_BEATS_HW.csv:system/etc/TPA2051_CFG_BEATS_HW.csv \
    device/htc/holiday/dsp/TPA2051_CFG_XC.csv:system/etc/TPA2051_CFG_XC.csv \
    device/htc/holiday/dsp/soundimage/Sound_FM_HP.txt:system/etc/soundimage/Sound_FM_HP.txt \
    device/htc/holiday/dsp/soundimage/Sound_FM_SPK.txt:system/etc/soundimage/Sound_FM_SPK.txt \
    device/htc/holiday/dsp/soundimage/Sound_MFG.txt:system/etc/soundimage/Sound_MFG.txt \
    device/htc/holiday/dsp/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    device/htc/holiday/dsp/soundimage/Sound_Original_MFG.txt:system/etc/soundimage/Sound_Original_MFG.txt \
    device/htc/holiday/dsp/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
    device/htc/holiday/dsp/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    device/htc/holiday/dsp/soundimage/Sound_Phone_Original.txt:system/etc/soundimage/Sound_Phone_Original.txt \
    device/htc/holiday/dsp/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    device/htc/holiday/dsp/soundimage/Sound_Phone_Original_HP_WA.txt:system/etc/soundimage/Sound_Phone_Original_HP_WA.txt \
    device/htc/holiday/dsp/soundimage/Sound_Phone_Original_HP_WB.txt:system/etc/soundimage/Sound_Phone_Original_HP_WB.txt \
    device/htc/holiday/dsp/soundimage/Sound_Phone_Original_MFG.txt:system/etc/soundimage/Sound_Phone_Original_MFG.txt \
    device/htc/holiday/dsp/soundimage/Sound_Phone_Original_MFG_WA.txt:system/etc/soundimage/Sound_Phone_Original_MFG_WA.txt \
    device/htc/holiday/dsp/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    device/htc/holiday/dsp/soundimage/Sound_Phone_Original_REC_WA.txt:system/etc/soundimage/Sound_Phone_Original_REC_WA.txt \
    device/htc/holiday/dsp/soundimage/Sound_Phone_Original_REC_WB.txt:system/etc/soundimage/Sound_Phone_Original_REC_WB.txt \
    device/htc/holiday/dsp/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    device/htc/holiday/dsp/soundimage/Sound_Phone_Original_SPK_WA.txt:system/etc/soundimage/Sound_Phone_Original_SPK_WA.txt \
    device/htc/holiday/dsp/soundimage/Sound_Phone_Original_SPK_WB.txt:system/etc/soundimage/Sound_Phone_Original_SPK_WB.txt \
    device/htc/holiday/dsp/soundimage/Sound_Phone_Original_WA.txt:system/etc/soundimage/Sound_Phone_Original_WA.txt \
    device/htc/holiday/dsp/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
    device/htc/holiday/dsp/soundimage/Sound_Rec_mono.txt:system/etc/soundimage/Sound_Rec_mono.txt \
    device/htc/holiday/dsp/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt \
    device/htc/holiday/dsp/soundimage/Sound_Rec_Voice_record.txt:system/etc/soundimage/Sound_Rec_Voice_record.txt \
    device/htc/holiday/dsp/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
    device/htc/holiday/dsp/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/htc/holiday/dsp/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/holiday/dsp/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg \
    device/htc/holiday/dsp/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/holiday/dsp/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/holiday/dsp/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    device/htc/holiday/dsp/soundimage/srsfx_trumedia_music_wide.cfg:system/etc/soundimage/srsfx_trumedia_music_wide.cfg \
    device/htc/holiday/dsp/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

# misc
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# Kernel
ifeq ($(USING_PREBUILT_KERNEL),true)
PRODUCT_COPY_FILES += $(shell \
    find device/htc/ruby/modules -name '*.ko' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
    | tr '\n' ' ')
endif

# call proprietary setup
$(call inherit-product-if-exists, vendor/htc/ruby/ruby-vendor.mk)

# htc audio settings
$(call inherit-product, device/htc/ruby/media_a1026.mk)
$(call inherit-product, device/htc/ruby/media_htcaudio.mk)

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Discard inherited values and use our own instead.
PRODUCT_DEVICE := ruby
PRODUCT_NAME := ruby
PRODUCT_BRAND := htc
PRODUCT_MODEL := Amaze 4G
PRODUCT_MANUFACTURER := HTC
