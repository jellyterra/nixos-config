# Copyright (C) 2024 Jelly Terra. All rights reserved.

{ config, pkgs, lib, ... }: {

imports = [
	./hardware-configuration.nix
	./fstab.nix
	./bashrc.nix
	./firewall.nix
	./udev-rules.nix
	./system-libraries.nix
	./system-packages.nix

	./hardware-intel.nix
];


# NixOS

nix.settings.substituters = lib.mkBefore [ "https://mirror.sjtu.edu.cn/nix-channels/store" ];

nixpkgs.config.allowUnfree = true;

system.stateVersion = "24.11";

systemd.targets = {
	sleep.enable = false;
	suspend.enable = false;
	hibernation.enable = false;
	hybrid-sleep.enable = false;
};

# Boot

boot.loader.systemd-boot.enable = true;
boot.loader.efi.canTouchEfiVariables = true;

# Networking

networking.hostName = "nixos";
networking.networkmanager.enable = true;

services.resolved = {
	enable = true;
	fallbackDns = [ "1.1.1.1" ];
};

# Locale

time.timeZone = "Asia/Singapore";

i18n.defaultLocale = "en_US.UTF-8";

i18n.extraLocaleSettings = {
	LC_ADDRESS = "en_SG.UTF-8";
	LC_IDENTIFICATION = "en_SG.UTF-8";
	LC_MEASUREMENT = "en_SG.UTF-8";
	LC_MONETARY = "en_SG.UTF-8";
	LC_NAME = "en_SG.UTF-8";
	LC_NUMERIC = "en_SG.UTF-8";
	LC_PAPER = "en_SG.UTF-8";
	LC_TELEPHONE = "en_SG.UTF-8";
	LC_TIME = "en_SG.UTF-8";
};

i18n.inputMethod = {
	enable = true;
	type = "fcitx5";
	fcitx5.waylandFrontend = true;
	fcitx5.addons = with pkgs; [
		fcitx5-chinese-addons
	];
};

# Graphics

services.xserver = {
	enable = true;

	displayManager.gdm = {
		enable = true;
		wayland = true;
	};

	xkb = {
		layout = "us";
		variant = "";
	};
};

services.desktopManager.plasma6.enable = true;

environment.plasma6.excludePackages = with pkgs.kdePackages; [
	discover
];

# Audio

security.rtkit.enable = true;
services.pipewire = {
	enable = true;
	alsa.enable = true;
	alsa.support32Bit = true;
	pulse.enable = true;
	jack.enable = true;
};

# PAM

services.fprintd.enable = true;
security.pam.services.login.fprintAuth = lib.mkForce true;

users.groups = {
	dino = {};
	plugdev = {};
};

users.users.dino = {
	isNormalUser = true;
	description = "Jelly Terra";
	group = "dino";
	extraGroups = [ "networkmanager" "wheel" "plugdev" "dialout" "audio" ];
};

# Applications

services.flatpak.enable = true;

services.udisks2.enable = lib.mkForce false;

# Fonts

fonts.packages = with pkgs; [
	noto-fonts
	noto-fonts-cjk-sans
	noto-fonts-emoji
];

# Environment variables

environment.variables = rec {
	LD_LIBRARY_PATH = lib.mkForce (with pkgs; lib.makeLibraryPath config.programs.nix-ld.libraries);

	PATH = "/bin:/opt/go/bin";
	SPACE = "/space";

	GOROOT = "/opt/go";
	GOPATH = "/home/dino/go";

	CARGO_TARGET_DIR = "/home/dino/.cargo/target";

	GOOGLE_API_KEY = "";
	GOOGLE_DEFAULT_CLIENT_ID = "";
	GOOGLE_DEFAULT_CLIENT_SECRET = "";
};

# Programs

programs = {

gnupg.agent.enable = true;
mtr.enable = true;
nix-ld.enable = true;

ssh.startAgent = true;

};

}
