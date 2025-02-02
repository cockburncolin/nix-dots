{ config, pkgs, lib, ... }:
{
	options = {
		utils.homeManager.enable = lib.mkOption {
			default = true;
			description = "install home-manager";
			type = lib.types.bool;
		};
	};

	config = lib.mkIf config.utils.homeManager.enable {
		environment.systemPackages = with pkgs; [ home-manager ];
	};
}
