# Copyright (C) 2025 Jelly Terra. All rights reserved.

{

networking.hostName = "nixos";
networking.networkmanager.enable = true;

networking.nameservers = [
	"2606:4700:4700::1111"
	"2606:4700:4700::1001"
];

services.resolved = {
	enable = true;
	dnssec = "true";
	fallbackDns = [];
	domains = [ "~." ];
};

networking.firewall = {
	enable = true;
	allowedTCPPorts = [];
};

}
