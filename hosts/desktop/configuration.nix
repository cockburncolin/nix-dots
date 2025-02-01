{ config, pkgs, inputs, ... }:
{
	imports = [
		./hardware-configuration.nix
		../../modules/bundle.nix
	];
 
	config = {
		time.timeZone = "America/Vancouver";

		games.enable = true;
		system.uefi.enable = true;
		utils.syncthing.uuid = "JH73IEG-I3NQVQN-WGOD6OE-3VRKKNS-AHIJOBQ-N4LBQDH-6KLT2EG-FNL3RAJ";
		
		i18n.defaultLocale = "en_CA.UTF-8";
		
		main-user.enable = true;
		main-user.userName = "user";

		# OpenGL for steam
		hardware.opengl.enable = true;
	};
}
