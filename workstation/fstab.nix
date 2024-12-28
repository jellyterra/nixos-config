# Copyright (C) 2024 Jelly Terra. All rights reserved.

{ lib, ... }: {

fileSystems."/home" = {
	device = "/dev/nvme0n1p2";
	fsType = "btrfs";
	options = [ "compress=zstd:3" "nosuid" "subvol=@/home" ];
};

fileSystems."/opt" = {
	device = "/dev/nvme0n1p2";
	fsType = "btrfs";
	options = [ "compress=zstd:3" "nosuid" "subvol=@/opt" ];
};

fileSystems."/space" = {
	device = "/dev/nvme0n1p2";
	fsType = "btrfs";
	options = [ "compress=zstd:3" "nosuid" "subvol=@/space" ];
};

fileSystems."/data" = {
	device = "/dev/nvme0n1p2";
	fsType = "btrfs";
	options = [ "compress=zstd:3" "noexec" "subvol=@/data" ];
};

fileSystems."/exdata" = lib.mkForce {
	device = "/dev/sda";
	fsType = "btrfs";
	options = [ "nofail" "nosuid" ];
};

}
