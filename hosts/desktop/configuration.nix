{ config, pkgs, inputs, ... }:
{
	imports = [
		./hardware-configuration.nix
		../../modules/applications/bundle.nix
		../../modules/system/bundle.nix
	];
 
	time.timeZone = "America/Vancouver";

	config.games.enable = true;
	config.system.bootmode = "uefi";
	config.utils.syncthing.uuid = "JH73IEG-I3NQVQN-WGOD6OE-3VRKKNS-AHIJOBQ-N4LBQDH-6KLT2EG-FNL3RAJ";
  
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

}
