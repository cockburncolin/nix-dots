{ config, lib, pkgs, ... }:
{
	imports = [ ./zsh.nix ];

	config.zsh.enable = lib.mkDefault true;
}
