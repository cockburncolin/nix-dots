{ config, pkgs, ... }:
{
	imports = [ ./basic-x.nix ];

	environment.systemPackages = with pkgs; [
		handbrake
		libaacs
		libbluray
	];
}
