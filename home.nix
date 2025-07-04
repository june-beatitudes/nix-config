{ config, pkgs, ... }:

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
  ];

  programs.git = {
    enable = true;
    userName = "Juniper Beatitudes";
    userEmail = "weirdgirl98@proton.me";
  };

  programs.fish.enable = true;
  programs.firefox.enable = true;

  home.stateVersion = "25.05";
}
