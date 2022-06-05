{ config, pkgs, ... }: {
  config = {
    environment.systemPackages = with pkgs; [
      blender
      gimp
      ventoy-bin
      mpv      
      wezterm
    ];

  };
}
