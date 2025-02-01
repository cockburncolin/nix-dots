{ config, lib, pkgs, ... }:
{
	imports = [ 
		./bluray.nix
		./syncthing.nix
	];

	config.utils.syncthing.enable = lib.mkDefault true;
}
