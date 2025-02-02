{ config, pkgs, ...}:
{
	fonts.packages = with pkgs; [
		font-awesome
		nerd-fonts.iosevka
		noto-fonts
		noto-fonts-cjk-sans
		noto-fonts-emoji
	];
}
