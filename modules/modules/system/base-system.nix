{ config, pkgs, lib, ... }:
{
	# Base system settings
	config = {
		nixpkgs.config.allowUnfree = true;
		nix.settings.experimental-features = [ "nix-command" "flakes" ];
		hardware.enableRedistributableFirmware = true;
		security.rtkit.enable = true;

		nix.gc = {
			automatic = true;
			dates = "weekly";
			options = "--delete-older-than 10d";
		};
	};
}
