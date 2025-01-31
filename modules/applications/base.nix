# Applications that all computers should have no matter what
{ config, pkgs, ... }:
{
	nixpkgs.config.allowUnfree = true;
	nix.settings.experimental-features = [ "nix-command" "flakes" ];

	networking = {
		enableIPv6 = false;	
		networkmanager.enable = true;
	};

	programs.zsh.enable = true;

	environment.systemPackages = with pkgs; [
		efibootmgr
		fzf
		git
		neofetch
		tree
		wget
	];

	security.rtkit.enable = true;
}
