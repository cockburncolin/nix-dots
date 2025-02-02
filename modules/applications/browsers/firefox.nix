{ config, lib, pkgs, ... }:
{
	options = {
		browsers.firefox.enable = lib.mkEnableOption "install firefox";
	};

	config = lib.mkIf config.browsers.firefox.enable {
		programs.firefox = {
			enable = true;
		};
	};
}
