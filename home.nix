{
  config,
  pkgs,
  lib,
  ...
}:

{
  home.username = "juniper";
  home.homeDirectory = "/home/juniper";

  home.file.".face".source = ./assets/avatar.png;

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
    zotero
    zathura
    sapling
    librewolf
    vscodium
    signal-desktop
    krita
    inkscape
    libreoffice
    fastfetch
    nautilus
  ];

  programs.git = {
    enable = true;
    userName = "Juniper Beatitudes";
    userEmail = "juniper@eyes-like-fire.org";
  };
  programs.gh = {
    enable = true;
    gitCredentialHelper = {
      enable = true;
    };
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
  programs.kitty = lib.mkForce {
    enable = true;
    themeFile = "Chalk";
    settings = {
      dynamic_background_opacity = true;
      enable_audio_bell = true;
      mouse_hide_wait = "-1.0";
      window_padding_width = 10;
      font_family = "FiraCode-Light";
      font_size = 10;
    };
  };

  home.stateVersion = "25.05";
}
