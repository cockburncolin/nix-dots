{ config, pkgs, ... }:
{
	imports = [ ./adv-x.nix ];

	programs.steam = {
		enable = true;
		gamescopeSession.enable = true;
	};

	programs.gamemode.enable = true;
	
	environment.systemPackages = with pkgs; [
		bottles
		heroic
		lutris
		mangohud
		prismlauncher
		protonup-qt
	];
}
