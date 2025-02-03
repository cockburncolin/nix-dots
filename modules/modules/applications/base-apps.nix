{ config, pkgs, ... }:
{
	# Base applications to install everywhere
	config = {
		environment.systemPackages = with pkgs; [
			efibootmgr
			nano
			fzf
			git
			neofetch
			ranger
			tree
			wget
		];
	};
}
