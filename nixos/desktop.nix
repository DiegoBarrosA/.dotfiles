{ config, pkgs, ...}:
{
config = {
xdg = {
  portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-wlr
      xdg-desktop-portal-gtk
    ];
    gtkUsePortal = true;
  };
};
programs.sway = { 
 enable = true;
  wrapperFeatures.gtk = true; 
  extraPackages = with pkgs; [
    swaylock
    swayidle
    wl-clipboard
    clipman
    mako 
    kitty
    imv
    wofi
    pcmanfm
    waybar
    gsettings-desktop-schemas
    gtk-engine-murrine
    gtk_engines
    libsForQt5.qtstyleplugin-kvantum
    lxappearance-gtk2
    udiskie
    xdg-user-dirs
    papirus-icon-theme
    materia-theme 
    phinger-cursors
    pavucontrol
    libinput-gestures
    grim
    slurp
    bluez
    bluez-tools
  ];
};
security.rtkit.enable = true;
services.pipewire = {
  enable = true;
  alsa.enable = true;
  alsa.support32Bit = true;
  pulse.enable = true;
  jack.enable = true;
};
#programs.qt5ct.enable = true;
hardware.pulseaudio.enable = false;

environment.pathsToLink = [ "/libexec" ];
  fonts.fonts = with pkgs; [
    noto-fonts-cjk
    noto-fonts-emoji 
    source-code-pro 
    font-awesome
  ];
   };
 }


