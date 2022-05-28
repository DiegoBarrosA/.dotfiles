{ config, pkgs, ... }: {
  services.xserver.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.displayManager.gdm.wayland = true;
  environment.systemPackages = with pkgs; [
    firefox
    gnome.gnome-tweaks
    gnome-secrets
    fragments
    monoid
    clapper

  ];

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };
  hardware.pulseaudio.enable = false;
  environment.gnome.excludePackages = (with pkgs; [
    gnome-photos
    gnome-tour
    epiphany
    gnome.geary
    gnome.totem
    gnome.cheese
    gnome.seahorse
    gnome.gnome-maps
    gnome.simple-scan
    gnome.yelp
  ]);
}
