{ config, pkgs, inputs, lib, ... }:

{
  home.username = "val";
  home.homeDirectory = "/home/val";
  home.stateVersion = "23.11";
  nixpkgs = {
		config = {
			allowUnfree = true;
			allowUnfreePredicate = (_: true);
		};
	};

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  
  home.packages = with pkgs; [
    bat
    tree
    eza
  ];
  
  home.shellAliases = {
    l = "eza";
    ls = "eza";
    cat = "bat";
  };
  
  programs.git = {
    enable = true;
    userName  = "vlucet";
    userEmail = "valentin.lucet@gmail.com";
  };

  programs.zsh = {
    enable = true;
  };

  programs.zsh.oh-my-zsh= {
    enable = true;
    plugins = ["git"];
    theme = "jispwoso";
  };

}
