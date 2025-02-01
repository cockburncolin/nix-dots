{ config, lib, pkg, ... }:
{
	options = {
		utils.syncthing.enable = lib.mkEnableOption "install syncthing";
		utils.syncthing.uuid = lib.mkOption {
			type = lib.types.str;
			example = "1234567-89ABCDE-FGHIJKL-MNOPQRS-TUVWXYZ-abcefgh-ijklmno-pqrstuv";
			default = "";
		};
	};

	config = lib.mkIf config.utils.syncthing.enable {
		networking.firewall = {
			allowedTCPPorts = [ 8384 22000 ];
			allowedUDPPorts = [ 22000 21027 ];
		};
	};
}
