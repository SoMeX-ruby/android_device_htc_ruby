# Android fstab file.
#<src>			<mnt_point>	<type>	<mnt_flags>						<fs_mgr_flags>
# load these in early-init instead
/dev/block/mmcblk0p17	/vendor/firmware/misc	vfat	ro,shortname=lower				wait
/dev/block/mmcblk0p21	/vendor/firmware/adsp	vfat	ro,shortname=lower				wait
/dev/block/mmcblk0p18	/vendor/firmware/misc_mdm	vfat	ro,shortname=lower			wait

/dev/block/mmcblk0p22   /boot           emmc      defaults     defaults
/dev/block/mmcblk0p23   /recovery       emmc      defaults     defaults

/dev/block/mmcblk0p29	/system		ext4	rw,noatime,barrier=0					wait
/dev/block/mmcblk0p30	/cache		ext4	noatime,nosuid,nodev,data=ordered,noauto_da_alloc	wait
/dev/block/mmcblk0p32	/devlog		ext4	noatime,nosuid,nodev,data=ordered,noauto_da_alloc	wait
/dev/block/mmcblk0p31   /data           ext4

#SDcard
/devices/platform/msm_sdcc.1/mmc_host/mmc0	/storage/sdcard0	auto	defaults	voldmanaged=sdcard:auto
/devices/platform/msm_sdcc.3/mmc_host/mmc2	/storage/sdcard1	auto	defaults	voldmanaged=sdcard:auto
/devices/platform/msm_hsusb_host.0/usb1		/storage/usbdisk0	auto	defaults	voldmanaged=sda:auto


#data has to be at the end for secure mount
noatime,nosuid,nodev,data=ordered,noauto_da_alloc	wait,encryptable=footer
