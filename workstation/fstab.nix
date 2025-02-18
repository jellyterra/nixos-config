# Copyright (C) 2025 Jelly Terra. All rights reserved.

{ lib, ... }: {

fileSystems."/home" = {
	device = "/dev/nvme0n1p2";
	fsType = "btrfs";
	options = [ "compress=zstd:3" "nofail" "nosuid" "subvol=@/home" ];
};

fileSystems."/opt" = {
	device = "/dev/nvme0n1p2";
	fsType = "btrfs";
	options = [ "compress=zstd:3" "nofail" "nosuid" "subvol=@/opt" ];
};

fileSystems."/space" = {
	device = "/dev/nvme0n1p2";
	fsType = "btrfs";
	options = [ "compress=zstd:3" "nofail" "nosuid" "subvol=@/space" ];
};

fileSystems."/data" = {
	device = "/dev/nvme0n1p2";
	fsType = "btrfs";
	options = [ "compress=zstd:3" "nofail" "noexec" "subvol=@/data" ];
};

fileSystems."/exdata" = lib.mkForce {
	device = "/dev/sda";
	fsType = "btrfs";
	options = [ "nofail" "nosuid" ];
};

}
