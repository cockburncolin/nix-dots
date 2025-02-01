{ config, lib, pkg, ... }:
{
	options = {
		utils.syncthing.enable = lib.mkOption { 
			default = false;
			description = "install syncthing";
			type = lib.types.bool;
		};
		utils.syncthing.uuid = lib.mkOption {
			default = "";
			example = "1234567-89ABCDE-FGHIJKL-MNOPQRS-TUVWXYZ-abcefgh-ijklmno-pqrstuv";
			type = lib.types.str;
		};
	};

	config = lib.mkIf config.utils.syncthing.enable {
		networking.firewall = {
			allowedTCPPorts = [ 8384 22000 ];
			allowedUDPPorts = [ 22000 21027 ];
		};
	};
}
