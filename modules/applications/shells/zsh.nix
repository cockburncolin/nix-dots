{ config, lib, pkgs, ... }:
{
	options = {
		shells.zsh.enable = lib.mkEnable "install zsh shell";
	};

	config = lib.mkIf config.shells.zsh.enable {
		programs.zsh = {
			enable = true;
		};
	};
}
