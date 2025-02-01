{ config, lib, ... }:
{
	options = {
		system.uefi.enable = lib.mkEnableOption "boot system uefi";
	};

	config = lib.mkIf config.system.uefi.enable {
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
	};
}
