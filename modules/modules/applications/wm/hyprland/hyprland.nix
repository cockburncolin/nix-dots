{ config, lib, pkgs, ... }:
{
	options = {
		wm.hyprland.enable = lib.mkOption {
			default = true;
			description = "install hyprland";
			type= lib.types.bool;
		};
	};

	config = lib.mkIf config.wm.hyprland.enable {
		programs.hyprland.enable = true;
		
		environment.systemPackages = [ pkgs.kitty ];
		environment.sessionVariables.NIXOS_OZONE_WL = "1";
	};
}
