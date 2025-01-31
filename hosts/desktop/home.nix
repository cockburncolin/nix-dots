{ config, pkgs, ... }:

{
  home.username = "user";
  home.homeDirectory = "/home/user";

  home.stateVersion = "24.11"; # Please read the comment before changing.

  home.packages = [

  ];

  home.file = {

  };
  # Git config
  programs.git = {
  	enable = true;
	userName = "cockburncolin";
	userEmail = "51009168+cockburncolin@users.noreply.github.com";
	aliases = {
		pu = "push";
		co = "checkout";
		cm = "commit";
	};
  };

  programs.zsh = {
  	enable = true;
	shellAliases = {
		vim = "nvim";
	};
	envExtra = ''
		export PATH=$PATH:$HOME/.local/bin
	'';
  	oh-my-zsh = {
		enable = true;
		plugins = [
			"git"
			"sudo"
		];
		theme = "gentoo";
	};
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
}
