# Copyright (C) 2025 Jelly Terra. All rights reserved.

{ pkgs, ... }: {

# Bluetooth

hardware.bluetooth = {
	enable = true;
	powerOnBoot = true;
};

# Intel Graphics

hardware.graphics = {
	enable = true;
	extraPackages = with pkgs; [
		vpl-gpu-rt
	];
};

# Printer

services.printing.enable = true;

hardware.printers.ensureDefaultPrinter = "EPSON_L130_Series";
hardware.printers.ensurePrinters = [
	{
		name = "EPSON_L130_Series";
		deviceUri = "ipp://[::1]/printers/EPSON_L130_Series";
		model = "everywhere";
	}
];

}
