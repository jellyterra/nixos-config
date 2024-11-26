# Copyright (C) 2024 Jelly Terra. All rights reserved.

{ pkgs, ... }: {

hardware.opengl = {
	enable = true;
	extraPackages = with pkgs; [
		onevpl-intel-gpu
	];
};

}
