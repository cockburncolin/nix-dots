{ config, lib, pkgs, ... }:
{
	imports = [ ./zsh.nix ];

	config.shells.zsh.enable = lib.mkDefault true;
}
