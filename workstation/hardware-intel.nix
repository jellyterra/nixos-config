# Copyright (C) 2025 Jelly Terra. All rights reserved.

{ pkgs, ... }: {

hardware.graphics = {
	enable = true;
	extraPackages = with pkgs; [
		vpl-gpu-rt
	];
};

}
