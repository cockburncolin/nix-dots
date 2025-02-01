{ config, lib, ... }:
{
	imports = [
		./lightdm.nix
	];

	config = {
		x11.login-managers.lightdm.enable = lib.mkDefault true;
	};
}
