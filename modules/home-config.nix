{ config, pkgs,  ... }:

{
  # home.username = "${config.main-user.userName}";
  # home.homeDirectory = "/home/${config.main-user.userName}";
  home.username = "user";
  home.homeDirectory = "/home/user";

  home.file = {};

  # Git config
  programs.git = {
		aliases = {
			pu = "push";
			co = "checkout";
			cm = "commit -m";
		};
  	enable = true;
		extraConfig = {
			push = { autoSetupRemote = true; };
		};
		userEmail = "51009168+cockburncolin@users.noreply.github.com";
		userName = "cockburncolin";
  };

  programs.zsh = {
  	enable = true;
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
		# PATH = "${config.home.sessionVariables.PATH}:${config.home.sessionVariables.HOME}/.local/bin";
  };

  programs.home-manager.enable = true;
  home.stateVersion = "24.11"; # Please read the comment before changing.
}
