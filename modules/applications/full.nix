{ config, pkgs, ... }:
{
	imports = [ ./x-apps ];

	programs = {
		handbrake.enabled = true;
		libaacs.enabled = true;
		libbluray.enabled = true;
		steam.enabled = true;
	};
}
