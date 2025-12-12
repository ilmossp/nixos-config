{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.zen-browser.homeModules.twilight
  ];
  home.username = "ilyass";
  home.homeDirectory = "/home/ilyass";

  # Set state version
  home.stateVersion = "24.11";

  # Packages managed by Home Manager
  home.packages = with pkgs; [
    kdePackages.kate
    neovim
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
    prismlauncher
    temurin-bin-21
    anyrun
    hyprpaper
    quickshell
    dunst
    pavucontrol
    quickshell
    bat
    telegram-desktop
    unrar
    openrgb-with-all-plugins
    brave
    nerd-fonts.jetbrains-mono
    rofi
    libsForQt5.qtstyleplugin-kvantum
    qt6Packages.qtstyleplugin-kvantum

    # The Kvantum Manager application
    themechanger
    kdePackages.qtstyleplugin-kvantum

    # Qt Theme Configuration utility (optional but highly recommended)
    libsForQt5.qt5ct
    qt6Packages.qt6ct

    slack
    appimage-run
    godot
    direnv
    zed-editor
    code-cursor

    kdePackages.okular
    kdePackages.filelight
    ];




  # Let Home Manager manage itself
  programs.home-manager.enable = true;

  # Zen Browser
  programs.zen-browser.enable = true;
}
