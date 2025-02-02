{ config, lib, pkgs, ... }:
{
	options = {
		sound.pipewire.enable = lib.mkEnableOption "enable pipewire";
	};

	config = lib.mkIf config.sound.pipewire.enable {
		services.pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
    };
	};
}
