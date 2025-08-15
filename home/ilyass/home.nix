{ config, pkgs, ... }:

{
  home.username = "ilyass";
  home.homeDirectory = "/home/ilyass";

  # Set state version
  home.stateVersion = "24.11";

  # Packages managed by Home Manager
  home.packages = with pkgs; [
    kdePackages.kate
    neovim
    code-cursor
    ghostty
    zoxide
    starship
    gemini-cli
    oh-my-fish
    discord
    chezmoi
    gh
    git
    ani-cli
    mpv
    wl-clipboard
    spotify
    heroic
    lutris
    steam
  ];

  # Let Home Manager manage itself
  programs.home-manager.enable = true;
}
