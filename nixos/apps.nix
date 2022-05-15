{ config, pkgs, ... }: {
  config = {
    nixpkgs.config.allowUnfree = true;

    environment.systemPackages = with pkgs; [
      transmission-gtk
      keepassxc
      blender
      neovide
      joplin-desktop
      libreoffice-fresh
      zathura
      gimp
      openrgb
      ventoy-bin
    ];

  };
}
