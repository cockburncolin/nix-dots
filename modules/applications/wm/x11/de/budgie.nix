{ config, lib, ... }:
{
	options = {
		x11.de.budgie.enable = lib.mkEnableOption "enable budgie desktop-environment";
	};

	config = lib.mkIf config.x11.de.budgie.enable {
		services.xserver =  {
			enable = true;
			videoDrivers = [ "amdgpu" ];
			desktopManager.budgie.enable = true; 
			xkb = {
				layout = "us";
				variant = "";
			};
		};
	};
}
