{ config, pkgs, lib, ... }:

{
  home.username = "juniper";
  home.homeDirectory = "/home/juniper";

  home.packages = with pkgs; [
    nmap
    bear
    nixfmt-rfc-style
    powertop
    alsa-utils
    lazygit
    wireshark
    cozette
    telegram-desktop
    arduino-cli
    safeeyes
    tmux
    discord
    cava
    ghostty
    zotero
  ];

  programs.git = {
    enable = true;
    userName = "Juniper Beatitudes";
    userEmail = "weirdgirl98@proton.me";
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
      plugins = [ "git" "timer" ];
    };
  };
  programs.neovim = {
    enable = true;
    extraLuaConfig = lib.fileContents ./nvim-init.lua;
    plugins = with pkgs.vimPlugins; [
      telescope-nvim
      rainbow-delimiters-nvim
      clangd_extensions-nvim
      nvim-lspconfig
      barbecue-nvim
      gitsigns-nvim
      tiny-inline-diagnostic-nvim
      todo-comments-nvim
      onedark-nvim
      nvim-tree-lua
      follow-md-links-nvim
    ];
  };

  home.stateVersion = "25.05";
}
