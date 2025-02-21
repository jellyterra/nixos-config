{ pkgs ? import <nixpkgs> {} }: pkgs.mkShell {

nativeBuildInputs = with pkgs; [
	stdenv
];

buildInputs = with pkgs; [
] ++ import /etc/nixos/system-libraries.nix { inherit pkgs; };

}
