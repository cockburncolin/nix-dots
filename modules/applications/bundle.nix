{ config, lib, pkgs, ... }:
{
	imports = [
		./games/base.nix
		./shells/base.nix
		./utils/base.nix
	];

	config.games.enable = lib.mkDefault false;

	config = {
		nixpkgs.config.allowUnfree = true;

		nix.settings.experimental-features = [ "nix-command" "flakes" ];
		
		security.rtkit.enable = true;

		# Programs that should be installed on everything no matter what
		networking = {
			networkmanager.enable = true;
		};

		environment.systemPackages = with pkgs; [
			efibootmgr
			fzf
			git
			neofetch
			tree
			wget
		];
	};
}
