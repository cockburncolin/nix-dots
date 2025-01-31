{ config, inputs, ... }:
{
	imports = [ ./user-add.nix ];
	boot = {
     loader = {
         efi = {
             canTouchEfiVariables = true;
             efiSysMountPoint = "/boot";
         };
         grub = {
             enable = true;
             efiSupport = true;
             device = "nodev";
             useOSProber = true;
         };
     };
	};

	main-user.enable = true;

	nix.gc = {
		automatic = true;
		dates = "weekly";
		options = "--delete-older-than 10d";
	};
}
