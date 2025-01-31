{ config, pkgs, ... }:
{
	nixpkgs.config.allowUnfree = true;
	nix.settings.experimental-features = [ "nix-command" "flakes" ];

	networking = {
		enableIPv6 = false;	
		networkmanager.enable = true;
	};

	programs = {
		efibootmgr.enable = true;
		git.enable = true;
		neofetch.enable = true;
		wget.enable = true;
		zsh.enable = true;
	};

	security.rtkit.enable = true;
}
