{ config, pkgs, ...}:
{
	fonts.packages = with pkgs; [
		iosevka
		nerdfonts
		noto-fonts
		noto-fonts-cjk-sans
		noto-fonts-emoji
	];
}
