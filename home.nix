{ pkgs, ... }

{
	home.username = "paulclrt";
	home.homeDirectory = "/home/paulclrt";

	home.packages = with pkgs; [
		git
		vim
		htop
		btop
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

}
