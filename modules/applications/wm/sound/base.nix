{ config, lib, ... }:
{
	imports = [
		./pipewire.nix	
	];
	
	config.sound.pipewire.enable = lib.mkDefault true;

}
