# Copyright (C) 2025 Jelly Terra. All rights reserved.

{ config, pkgs, ... }: { environment.systemPackages = with pkgs; [

(chromium.override {
	enableWideVine = true;
	commandLineArgs = [
		"--enable-wayland-ime"
		"--enable-features=UseOzonePlatform,ScrollableTabStrip:minTabWidth/140"
		"--ozone-platform-hint=wayland"
		"--proxy-server=http://[::1]:1080"
	];
})

nextcloud-client
thunderbird
vlc

emacs
vscode

bluespec
iverilog
verilator

espflash
flashrom
scrcpy

cmake
gnumake
ninja

electron
jdk21
nodejs
nushell
python3
tcl

kdePackages.flatpak-kcm
kdePackages.kate

android-tools
bubblewrap
busybox
dnsutils
git
htop
killall
mtr
usbutils
wget
wineWowPackages.staging
xfsprogs
zip

]; }
