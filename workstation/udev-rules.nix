# Copyright (C) 2025 Jelly Terra. All rights reserved.

{ services.udev.extraRules = ''

# SD/MMC

SUBSYSTEM=="block", KERNEL=="mmcblk*", GROUP="plugdev"

# USB Vendor ID

# FTDI
SUBSYSTEMS=="usb", ATTR{idVendor}=="0403", GROUP="plugdev", MODE:="0666"

# Google
SUBSYSTEMS=="usb", ATTR{idVendor}=="18d1", GROUP="plugdev", MODE:="0660"

# MediaTek
SUBSYSTEMS=="usb", ATTR{idVendor}=="0e8d", GROUP="plugdev", MODE:="0660"

# SEGGER
SUBSYSTEMS=="usb", ATTR{idVendor}=="1366", GROUP="plugdev", MODE:="0666"

# USB Product ID

# CanoKeys
# GnuPG
SUBSYSTEM!="usb", GOTO="canokeys_rules_end"
ACTION!="add|change", GOTO="canokeys_rules_end"
ATTRS{idVendor}=="20a0", ATTRS{idProduct}=="42d4", ENV{ID_SMARTCARD_READER}="1"
LABEL="canokeys_rules_end"
# FIDO2/U2F
KERNEL=="hidraw*", SUBSYSTEM=="hidraw", ATTRS{idVendor}=="20a0", ATTRS{idProduct}=="42d4", TAG+="uaccess", GROUP="plugdev", MODE="0660"
# WebUSB
SUBSYSTEMS=="usb", ATTR{idVendor}=="20a0", ATTR{idProduct}=="42d4", GROUP="plugdev", MODE="0660"

# CH340
SUBSYSTEMS=="usb", ATTR{idVendor}=="1a86", ATTR{idProduct}=="7522", GROUP="plugdev", MODE:="0666"

''; }
