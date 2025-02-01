{ config, lib, pkgs, ... }:
{
	imports = [
		./steam.nix
	];

	config.steam.enable = lib.mkDefault true;
	# config.lutris.enable = lib.mkDefault false;

	options = {
		games.enable = lib.mkEnableOption "install games";
	};

	# config = lib.mkIf config.games.enable == false {
	# 		config.steam.enable = lib.mkForce false;
	# };
}
