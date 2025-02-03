{ config, lib, ... }:
{
	imports = [ ./firefox.nix ];
	
	config.browsers.firefox.enable = lib.mkDefault true;
}
