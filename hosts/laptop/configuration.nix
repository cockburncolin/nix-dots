{ config, pkgs, inputs, ... }:
let
	username = "colin";
in
{
	imports = [
		# ./hardware-configuration.nix
	];
	
	main-user.enable = true;
	main-user.userName = ${username};

	home-manager = {
		backupFileExtension = "bak";
		extraSpecialArgs = { inherit inputs; };
		users = {
			${username} = import ../../modules/home-config.nix;
		};
	};
 
	time.timeZone = "America/Vancouver";
  
	i18n.defaultLocale = "en_CA.UTF-8";
  
	services.xserver.enable = true;
  
	services.xserver.displayManager.lightdm.enable = true;
	services.xserver.desktopManager.budgie.enable = true;
  
	services.xserver.xkb = {
		layout = "us";
    	variant = "";
	};

	services.printing.enable = true;
	hardware.bluetooth.enable = false;
	hardware.pulseaudio.enable = false;
}
