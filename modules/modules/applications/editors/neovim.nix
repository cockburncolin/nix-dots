{ lib, config, pkgs,...}:
{
	options = {
		editors.neovim.enable = lib.mkEnableOption "install neovim";
	};

	config = lib.mkIf config.editors.neovim.enable {
		programs.neovim = {
			enable = true;
			defaultEditor = true;
			vimAlias = true;
		};
	};
}
