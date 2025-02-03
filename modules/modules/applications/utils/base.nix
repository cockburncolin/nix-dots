{ config, lib, pkgs, ... }:
{
	imports = [ 
		./bluray.nix
		./syncthing.nix
		./home-manager.nix
	];

	config.utils.syncthing.enable = lib.mkDefault true;
}
