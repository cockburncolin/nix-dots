{ config, pkgs, inputs, ... }:
{
	imports = [
		./base.nix
		./fonts.nix
	];

	services.pipewire = {
		enable = true;
		alsa.enable = true;
		alsa.support32Bit = true;
		pulse.enable = true;
		jack.enable = true;
	};

	programs = { 
		firefox.enabled = true;
		mpv.enabled = true;
		yt-dlp.enabled = true;

		neovim = {
		  enable = true;
		  defaultEditor = true;
	  };
	};
}
