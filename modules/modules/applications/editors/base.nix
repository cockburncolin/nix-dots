{ config, lib, ... }:
{
	imports = [ ./neovim.nix ];

	config.editors.neovim.enable = lib.mkDefault true;
}
