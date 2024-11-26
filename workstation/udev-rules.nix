# Copyright (C) 2024 Jelly Terra. All rights reserved.

{ services.udev.extraRules = ''

# Hardware Debugging

SUBSYSTEMS=="usb", ATTR{idVendor}=="361c", GROUP="plugdev", MODE:="0660"
SUBSYSTEMS=="usb", ATTR{idVendor}=="0403", GROUP="plugdev", MODE:="0666"
SUBSYSTEMS=="usb", ATTR{idVendor}=="09fb", GROUP="plugdev", MODE:="0666"

# CH340
SUBSYSTEMS=="usb", ATTR{idVendor}=="1a86", ATTR{idProduct}=="7522", GROUP="plugdev", MODE:="0666"

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

''; }
