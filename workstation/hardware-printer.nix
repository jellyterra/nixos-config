# Copyright (C) 2025 Jelly Terra. All rights reserved.

{ config, pkgs, lib, ... }: {

services.printing.enable = true;
services.printing.drivers = with pkgs; [
	(writeTextDir "share/cups/model/EPSON_L130_Series.ppd" (builtins.readFile "/opt/ppd/EPSON_L130_Series.ppd"))
];

hardware.printers.ensureDefaultPrinter = "EPSON_L130_Series";
hardware.printers.ensurePrinters = [
	{
		name = "EPSON_L130_Series";
		deviceUri = "http://[::1]:631/printers/EPSON_L130_Series";
		model = "EPSON_L130_Series.ppd";
	}
];

}
