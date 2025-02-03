{ config, pkgs, inputs, ... }:
{
	imports = [
		../../modules/bundle.nix
		./hardware-configuration.nix
	];
 
	config = {
		time.timeZone = "America/Vancouver";
		networking.hostName = "brutus";

		games.enable = false;
		utils.homeManager.enable = true;
		system.uefi.enable = true;
		
		i18n.defaultLocale = "en_CA.UTF-8";
		security.pam.services.hyprlock = {};

		# Fix F keys on QK75 keyboard
		boot.kernelParams =  [ "hid_apple.fnmode=2" ];
		
		main-user.enable = true;
		main-user.userName = "colin";

		# OpenGL for steam
		hardware.graphics.enable = true;
	};
}
