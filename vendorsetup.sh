#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2019-2022 The OrangeFox Recovery Project
#	
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
# 	
# 	Please maintain this if you use this script or any part of it
#

# Flags
   export TW_DEFAULT_LANGUAGE="en"
	export OF_KEEP_FORCED_ENCRYPTION=1
   export OF_SCREEN_H=2340
   export OF_STATUS_H=80
   export OF_STATUS_INDENT_LEFT=48
   export OF_STATUS_INDENT_RIGHT=48
  	export OF_HIDE_NOTCH=0
  	export OF_CLOCK_POS=1
	export OF_USE_MAGISKBOOT=1
	export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
	export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
	export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
	export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
	export OF_NO_MIUI_PATCH_WARNING=1
	export OF_USE_GREEN_LED=1
	# remove addons
	export FOX_DELETE_AROMAFM=1
	export FOX_DELETE_INITD_ADDON=1

	# use magisk 25.1 for the magisk addon
	export FOX_USE_SPECIFIC_MAGISK_ZIP=`pwd`/device/lenovo/jd2019/Magisk/Magisk-v25.2.zip

	export FOX_USE_BASH_SHELL=1
	export FOX_ASH_IS_BASH=1
	export FOX_USE_NANO_EDITOR=1
	export FOX_USE_TAR_BINARY=1
	export FOX_USE_ZIP_BINARY=1
	export FOX_USE_SED_BINARY=1
	export FOX_USE_XZ_UTILS=1
	export FOX_REPLACE_BUSYBOX_PS=1
	export OF_USE_NEW_MAGISKBOOT=1
	export OF_SKIP_MULTIUSER_FOLDERS_BACKUP=1

   # use system (ROM) fingerprint where available
   export OF_USE_SYSTEM_FINGERPRINT=1

	# OTA for custom ROMs
   export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=1
   export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1

   # -- add settings for R11 --
   export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1
   export OF_QUICK_BACKUP_LIST="/boot;/data;/dtbo;"
   # -- end R11 settings --

	# run a process after formatting data to work-around MTP issues
	if [ "$FOX_VARIANT" = "permissive" ]; then
	   export OF_FORCE_CREATE_DATA_MEDIA_ON_FORMAT=1
	else
	   unset OF_FORCE_CREATE_DATA_MEDIA_ON_FORMAT
	   export OF_RUN_POST_FORMAT_PROCESS=1
	fi

	# let's see what are our build VARs
	if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
  	   export | grep "FOX" >> $FOX_BUILD_LOG_FILE
  	   export | grep "OF_" >> $FOX_BUILD_LOG_FILE
   	   export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
  	   export | grep "TW_" >> $FOX_BUILD_LOG_FILE
 	fi
#
