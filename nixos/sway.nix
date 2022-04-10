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
  };
};
programs.sway = { 
 enable = true;
  wrapperFeatures.gtk = true; 
  extraPackages = with pkgs; [
    #Core
     ##Session management
       swaylock
       swayidle
     ##Info
       waybar
       mako 
     ##Clipboard & Screenshots
       wl-clipboard
       clipman
       grim
       slurp
     ##Terminal
       kitty
     ##Launcher
       wofi
     ##Filemanager GUI
       pcmanfm
     ##Media
       imv
       mpv
     ##Controler    
       pavucontrol
     ##Theming
       gsettings-desktop-schemas
       gtk-engine-murrine
       gtk_engines
       libsForQt5.qtstyleplugin-kvantum
       lxappearance-gtk2
     ###themes
        papirus-icon-theme
        materia-theme 
        phinger-cursors
     ##Device Management
       udiskie
       bluez
       bluez-tools
       
       
      ##Mura
       libinput-gestures
  
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


