{ config, lib, pkgs, ... }:
{
	imports = [
		./steam.nix
	];

	config.steam.enable = lib.mkDefault true;

	options = {
		games.enable = lib.mkEnableOption "install games";
	};

	# config = lib.mkIf config.games.enable == false {
	# 		config.steam.enable = lib.mkForce false;
	# };
}
