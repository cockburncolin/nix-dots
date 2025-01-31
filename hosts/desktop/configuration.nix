{ config, pkgs, inputs, ... }:
{
	imports = [
		./hardware-configuration.nix
		inputs.home-manager.nixosModules.home-manager
	];
	
	# Fix F keys on QK75 keyboard
	boot.kernelParams =  [ "hid_apple.fnmode=2" ];

	main-user.enable = true;
	main-user.userName = "user";

	home-manager = {
		backupFileExtension = "bak";
		extraSpecialArgs = { inherit inputs; };
		users = {
			"user" = import ../../modules/home-config.nix;
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
