{ config, pkgs, inputs, ... }:
{
	imports = [ ./hardware-configuration.nix ];
	
 
	time.timeZone = "America/Vancouver";
  
	i18n.defaultLocale = "en_CA.UTF-8";
  
	services.xserver =  {
		enable = true;
		videoDrivers = [ "amdgpu" ];
		displayManager.lightdm.enable = true;
		desktopManager.budgie.enable = true;

		xkb = {
			layout = "us";
				variant = "";
		};
	};
  
	main-user.userName = "user";

	# OpenGL for steam
	hardware.opengl.enable = true;

	services.printing.enable = true;
	hardware.bluetooth.enable = false;
	hardware.pulseaudio.enable = false;
}
