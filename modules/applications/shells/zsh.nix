{ config, lib, pkgs, ... }:
{
	options = {
		shells.zsh.enable = lib.mkEnableOption "install zsh shell";
	};

	config = lib.mkIf config.shells.zsh.enable {
		programs.zsh = {
			enable = true;
		};
	};
}
