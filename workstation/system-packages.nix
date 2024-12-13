# Copyright (C) 2024 Jelly Terra. All rights reserved.

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

] ++ config.programs.nix-ld.libraries; }
