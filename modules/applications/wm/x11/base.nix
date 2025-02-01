{ config }:
{
	imports = [
		./de/bundle.nix
		./login-managers/bundle.nix
	];

	config.x11.login-managers.lightdm.enable = lib.mkDefault true;
}
