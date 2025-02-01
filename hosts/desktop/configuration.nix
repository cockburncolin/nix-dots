{ config, pkgs, inputs, ... }:
{
	imports = [
		../../modules/bundle.nix
		./hardware-configuration.nix
	];
 
	config = {
		time.timeZone = "America/Vancouver";

		games.enable = true;
		utils.homeManager.enable = true;
		system.uefi.enable = true;
		utils.syncthing.uuid = "JH73IEG-I3NQVQN-WGOD6OE-3VRKKNS-AHIJOBQ-N4LBQDH-6KLT2EG-FNL3RAJ";
		
		i18n.defaultLocale = "en_CA.UTF-8";

		# Fix F keys on QK75 keyboard
		boot.kernelParams =  [ "hid_apple.fnmode=2" ];
		
		main-user.enable = true;
		main-user.userName = "colin";

		# OpenGL for steam
		hardware.graphics.enable = true;
	};
}
