{ config, lib, ... }:
{
	options = {
		x11.budgie.enable = lib.mkEnableOption "enable budgie desktop-environment";
	};

	config = lib.mkIf config.x11.budgie.enable {
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
