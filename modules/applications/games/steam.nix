{ config, lib, pkgs, ... }:
{
	options = {
		steam.enable = lib.mkEnableOption "install games";
	};

	config = lib.mkIf config.steam.enable {
		programs.steam = {
			enable = true;
			gamescopeSession.enable = true;
		};

		programs.gamemode.enable = true;
		
		environment.systemPackages = with pkgs; [
			bottles
			heroic
			mangohud
			protonup-qt
		];
	};
}
