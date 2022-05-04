{ config, pkgs, ... }:
{
  config = {
    environment.systemPackages = with pkgs;[
    nodejs 
    nodePackages.browser-sync
    nodePackages.prettier
    ripgrep
    fd
    ];
  };
}

