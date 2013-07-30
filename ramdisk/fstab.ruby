# Android fstab file.
# The filesystem that contains the filesystem checker binary (typically /system) cannot
# specify MF_CHECK, and must come before any filesystems that do specify MF_CHECK

#<src>                                              <mnt_point>         <type>  <mnt_flags and options>
/dev/block/mmcblk0p22                               /boot               emmc    defaults  defaults
/dev/block/mmcblk0p23                               /recovery           emmc    defaults  defaults
/dev/block/mmcblk0p29                               /system             ext4    ro,data=ordered,noauto_da_alloc wait
/dev/block/mmcblk0p30                               /cache              ext4    nosuid,nodev,noatime,data=ordered,noauto_da_alloc wait,check
/dev/block/mmcblk0p32                               /devlog             ext4    noatime,nosuid,nodev,data=ordered,noauto_da_alloc wait
/dev/block/mmcblk0p31                               /data               ext4    nosuid,nodev,noatime,noauto_da_alloc,data=ordered wait,encryptable=footer
/devices/platform/msm_sdcc.1/mmc_host/mmc0          /storage/sdcard0    vfat    defaults  voldmanaged=internal:28
/devices/platform/msm_sdcc.3/mmc_host/mmc2          /storage/sdcard1    vfat    defaults  voldmanaged=external:auto
/devices/platform/msm_hsusb_host.0/usb1             /storage/usbdisk0   auto    defaults
