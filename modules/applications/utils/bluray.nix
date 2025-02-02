{ config, pkgs, lib, ... }:
{
	options = {
		utils.bluray.enable = lib.mkEnableOption "install bluray utils";
	};

	config = lib.mkIf config.utils.bluray.enable {
		environment.systemPackages = with pkgs; [
			handbrake
			libaacs
			libbluray
		];
	};
}
