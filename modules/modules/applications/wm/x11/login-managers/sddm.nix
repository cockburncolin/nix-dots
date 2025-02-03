{ config, lib, ... }:
{
	options = {
		disp-manager.sddm.enable = lib.mkOption {
			description = "enable sddm";
			default = true;
			type = lib.types.bool;
		};
	};

	config = lib.mkIf config.disp-manager.sddm.enable {
		services.displayManager.sddm = {
			enable = true;
			theme = "where-is-my-sddm-theme";
			wayland.enable = true;
			};
	};
}
