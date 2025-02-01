{ config, pkgs, ... }:
{
	imports = [
		./x11/base.nix
	];


	environment.systemPackages = with pkgs; [
		mpv
		yt-dlp
	];
}
