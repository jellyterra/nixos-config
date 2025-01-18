# Copyright (C) 2025 Jelly Terra. All rights reserved.

{ config, pkgs, lib, ... }: {

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
