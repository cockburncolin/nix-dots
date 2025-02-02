{ config, lib , ... }:
{
	imports = [ ./budgie.nix ];
	
	config = {
		x11.de.budgie.enable = lib.mkDefault true;	
	};
}
