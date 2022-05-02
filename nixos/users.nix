{ config, pkgs, ... }:
{
  users.users.tsuneko = {
     isNormalUser = true;
     extraGroups = [ "input" "wheel" "video" "networkmanager" "camera" ]; 
     shell = pkgs.zsh;     
};
programs.zsh = {
  enable = true;
  shellAliases = {
    ls = "exa -al --color=always --group-directories-first";
    la = "alias la='exa -a --color=always --group-directories-first'";
    rn = "ranger";
    cp = "cp -i";
    mv = "mv -i";
    rr = "curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash";
    serve = "browser-sync start --server --files .";    
    moe= "mpv https://listen.moe/stream";
    update = "sudo nixos-rebuild switch";
  };
  ohMyZsh = {
    enable = true;
    
    theme = "norm";
  };
};

}
