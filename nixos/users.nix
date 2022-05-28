{ config, pkgs, ... }: {
  users.users.diego = {
    isNormalUser = true;
    extraGroups = [ "input" "wheel" "video" "networkmanager" "camera" ];
    shell = pkgs.fish;
    description = "Diego Barros";
  };
  programs.fish = {
    enable = true;
    shellAliases = {
      ls = "exa -al --color=always --group-directories-first";
      la = "alias la='exa -a --color=always --group-directories-first'";
      rn = "ranger";
      cp = "cp -i";
      mv = "mv -i";
      moe = "mpv https://listen.moe/stream";
      update =
        "sudo nixos-rebuild switch --upgrade && notify-send  'Update completed!🐧🎉'";
    };
  };
}

