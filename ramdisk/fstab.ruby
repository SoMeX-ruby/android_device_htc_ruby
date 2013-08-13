# Android fstab file.
#<src>			<mnt_point>	<type>	<mnt_flags>						<fs_mgr_flags>
# load these in early-init instead
#/dev/block/mmcblk0p17	/vendor/firmware/misc	vfat	ro,shortname=lower				wait
#/dev/block/mmcblk0p21	/vendor/firmware/adsp	vfat	ro,shortname=lower				wait

/dev/block/mmcblk0p29	/system		ext4	ro,data=ordered,noauto_da_alloc				wait
/dev/block/mmcblk0p30	/cache		ext4	noatime,nosuid,nodev,data=ordered,noauto_da_alloc	wait
/dev/block/mmcblk0p31	/data		  ext4	noatime,nosuid,nodev,data=ordered,noauto_da_alloc	wait,encryptable=footer
/dev/block/mmcblk0p32	/devlog		ext4	noatime,nosuid,nodev,data=ordered,noauto_da_alloc	wait

# Bits from recovery.fstab
/dev/block/mmcblk0p22   /boot		emmc	defaults
/dev/block/mmcblk0p24	/misc		emmc	defaults
/dev/block/mmcblk0p23	/recovery	emmc	defaults
/dev/block/mmcblk1p1	/sdcard		vfat	defaults
/dev/block/mmcblk0p36	/internal_sdcard	vfat	defaults
