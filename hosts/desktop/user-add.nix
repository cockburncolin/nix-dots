{ lib, config, pkgs, inputs, ... }:
{
	options = {
		main-user = {
			enable = lib.mkEnableOption "enable user module";

			userName = lib.mkOption {
				default = "user";
				description = ''
				  username
				'';
			};
		};
	};

	config = lib.mkIf config.main-user.enable {
		users.users.${config.main-user.userName} = {
			isNormalUser = true;
			initialPassword = "P@ssw0rd";
			description = "main user";
			extraGroups = [ "networkmanager" "wheel" ];
			shell = pkgs.zsh;
		};
	};
}
