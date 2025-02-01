{ config, lib, pkg, ... }:
{
	options = {
		x11.login-manager.lightdm.enable = lib.mkEnableOption "enable lightdm";
	};

	config = lib.mkIf config.x11.login-manager.lightdm.enable {
		services.xserver = {
			enable = true;
			displayManager.lightdm.enable = true;
		};
	};
}
