{ config, pkgs, ... }:
{
  # environment.etc = {
  #  "resolv.conf".text = "OpenNIC  216.238.104.56\n";
  #};

  environment.variables = {
        # This will become a global environment variable
       "QT_STYLE_OVERRIDE"="kvantum";
       "_JAVA_AWT_WM_NONREPARENTING"="1";
       "MOZ_ENABLE_WAYLAND" = "1";
       "XDG_CURRENT_DESKTOP" = "sway"; 
};
}
