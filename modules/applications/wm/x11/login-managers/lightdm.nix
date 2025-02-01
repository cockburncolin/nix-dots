{ config, lib, ... }:
{
	options = {
		x11.login-managers.lightdm.enable = lib.mkEnableOption "enable lightdm";
	};

	config = lib.mkIf config.x11.login-managers.lightdm.enable {
		services.xserver = {
			enable = true;
			displayManager.lightdm.enable = true;
		};
	};
}
