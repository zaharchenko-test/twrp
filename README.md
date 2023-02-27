# Device tree for Lenovo Z6 Lite
For building OrangFox based on Android 12.1

Model: L38111

## Device specifications

Basic   | Spec Sheet
-------:|:-------------------------
SoC     | Qualcomm SMD710 Snapdragon 710
CPU     | Octa-core (Octa-core (2x2.2 GHz Kryo 360 Gold & 6x1.7 GHz Kryo 360 Silver) Kryo 360 Silver)
GPU     | Adreno 616
Memory  | 4GB / 6GB (LPDDR4X)
Shipped Android Version | 9.0 with ZUI 11
Storage | 64/128 GB Micron S0J9K8
Battery | Non-removable Li-Po 4050 mAh
Display | 1080 x 2340 pixels, 19.5:9 ratio, 6.3 inches, 97.4 cm2, IPS LCD, HDR10 (~409 ppi density)
Extras  | microSD Card

## Features

Works:

- ADB/ADB Sideload
- Decryption of /data
- Screen brightness settings
- MTP
- Flashing (opengapps, roms, images and so on)
- Backup/Restore
- USB OTG
- Double-tap-to-wake
- Vibration

## Compile

Follow instructions placed here: https://gitlab.com/OrangeFox/sync

Finally execute these:

```
. build/envsetup.sh
lunch twrp_jd2019-eng
mka adbd recoveryimage -j$( nproc --all )
```

To install it:

```
fastboot flash recovery out/target/product/jd2019/recovery.img
```
Or just flash OrangeFox zip archive in recovery.
