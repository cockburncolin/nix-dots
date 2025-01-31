{ config, pkgs, ... }:

{
  home.username = "user";
  home.homeDirectory = "/home/user";

  home.file = {};

  # Git config
  programs.git = {
	aliases = {
		pu = "push";
		co = "checkout";
		cm = "commit";
	};
  	enable = true;
	userEmail = "51009168+cockburncolin@users.noreply.github.com";
	userName = "cockburncolin";
  };

  programs.zsh = {
  	enable = true;
	envExtra = ''
		export PATH=$PATH:$HOME/.local/bin
	'';
  	oh-my-zsh = {
		enable = true;
		plugins = [ "git" "sudo" ];
		theme = "gentoo";
	};
	shellAliases = {
		vim = "nvim";
	};
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
  home.stateVersion = "24.11"; # Please read the comment before changing.
}
