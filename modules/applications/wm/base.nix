{ inputs, config, pkgs, lib,... }:
{
	imports = [
		./x11/base.nix
	];


	config = {
		environment.systemPackages = with pkgs; [
			mpv
			yt-dlp
		];
	};
}
