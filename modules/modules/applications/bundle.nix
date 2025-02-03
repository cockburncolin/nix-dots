{ config, lib, pkgs, ... }:
{
	imports = [
		./base-apps.nix
		./games/base.nix
		./editors/base.nix
		./shells/base.nix
		./browsers/base.nix
		./utils/base.nix
		./wm/base.nix
	];


	config = {
		# Programs that should be installed on everything no matter what
		networking.networkmanager.enable = true;
	};
}
