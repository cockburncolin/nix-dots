{ config, lib, pkgs, ... }:
{
	imports = [
		./games/base.nix
		./editors/base.nix
		./shells/base.nix
		./browsers/base.nix
		./utils/base.nix
		./wm/bundle.nix
	];


	config = {
		nixpkgs.config.allowUnfree = true;

		nix.settings.experimental-features = [ "nix-command" "flakes" ];
		
		security.rtkit.enable = true;

		# Programs that should be installed on everything no matter what
		networking.networkmanager.enable = true;

		environment.systemPackages = with pkgs; [
			efibootmgr
			fzf
			git
			neofetch
			ranger
			tree
			wget
		];
	};
}
