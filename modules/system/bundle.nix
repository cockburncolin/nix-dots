{ config, libs, pkgs, ... }:
{
	imports = [
		./uefi.nix
		./user-add.nix
	];

	nix.gc = {
		automatic = true;
		dates = "weekly";
		options = "--delete-older-than 10d";
	};
}
