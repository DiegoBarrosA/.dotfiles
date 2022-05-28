{ config, pkgs, ... }: {
  config = {
    environment.systemPackages = with pkgs; [
      blender
      gimp
      openrgb
      ventoy-bin
      mpv      
      freecad
    ];

  };
}
