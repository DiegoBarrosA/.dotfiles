{ config, pkgs, ... }:
{
  config = {
    environment.systemPackages = with pkgs;[
    neovide
    ripgrep
    fd


    ];
  };
}

