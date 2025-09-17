{
  config,
  pkgs,
  lib,
  ...
}:

{
  home.username = "juniper";
  home.homeDirectory = "/home/juniper";

  home.packages = with pkgs; [
    nmap
    bear
    nixfmt-rfc-style
    bottom
    alsa-utils
    lazygit
    wireshark
    telegram-desktop
    tmux
    discord
    ghostty
    zotero
    zathura
    sapling
    gh
    librewolf
  ];

  programs.git = {
    enable = true;
    userName = "Juniper Beatitudes";
    userEmail = "juniper@eyes-like-fire.org";
  };
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    history.size = 10000;
    oh-my-zsh = {
      enable = true;
      theme = "agnoster";
      plugins = [
        "git"
        "timer"
      ];
    };
  };
  
  home.stateVersion = "25.05";
}
