{ config, pkgs, ... }:

{
	home.username = "paulclrt";
	home.homeDirectory = "/home/paulclrt";
	home.stateVersion = "24.05";

	home.packages = with pkgs; [
		git
		vim
		zsh
		htop
		btop
                lf
		fzf
		tmux
		ripgrep
	];

	programs.git = {
		enable = true;

		userName = "paulclrt";
		userEmail = "p4ul.claret@gmail.com";

		aliases = {
			st = "status";
			lg = "log --oneline --graph";	
		};
	};
	# programs.zsh.enable = true;


        # the user needs to download the github.com/paulclrt/dotfiles repo and put it as is in the $HOME folder
        # otherwise the symblinks will exists but point to nothing (cause error ?)
        # this is to keep the dotfiles as regular files instead of nixos synthax so they are still usable by windows and other distros
        # home.backupFileExtension = "backup";
        home.file.".zshrc".source = config.lib.file.mkOutOfStoreSymlink
            "${config.home.homeDirectory}/dotfiles/.zshrc";
        home.file.".tmux.conf".source = config.lib.file.mkOutOfStoreSymlink
            "${config.home.homeDirectory}/dotfiles/.tmux.conf";
        home.file.".config/i3".source = config.lib.file.mkOutOfStoreSymlink
            "${config.home.homeDirectory}/dotfiles/.config/i3";
        home.file.".config/ghostty".source = config.lib.file.mkOutOfStoreSymlink
            "${config.home.homeDirectory}/dotfiles/.config/ghostty";
        home.file.".tmux".source = config.lib.file.mkOutOfStoreSymlink
            "${config.home.homeDirectory}/dotfiles/.tmux";
        home.file.".vimrc".source = config.lib.file.mkOutOfStoreSymlink
            "${config.home.homeDirectory}/dotfiles/.vimrc";
        home.file.".vim".source = config.lib.file.mkOutOfStoreSymlink
            "${config.home.homeDirectory}/dotfiles/.vim";
        home.file.".config/picom".source = config.lib.file.mkOutOfStoreSymlink
            "${config.home.homeDirectory}/dotfiles/.config/picom";
        home.file.".config/polybar".source = config.lib.file.mkOutOfStoreSymlink
            "${config.home.homeDirectory}/dotfiles/.config/polybar";
        home.file.".config/nvim".source = config.lib.file.mkOutOfStoreSymlink
            "${config.home.homeDirectory}/dotfiles/.config/nvim";

  	xsession.windowManager.i3.config = builtins.readFile ./i3/config;
}
