{ config, pkgs, ... }:
{
	imports = [ ./x-apps.nix ];

	environment.systemPackages = with pkgs; [
		handbrake
		libaacs
		libbluray
		steam
	];
}
