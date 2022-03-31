{ config, pkgs, ...}:

{
config = {  
  programs.tmux.enable = true;
  programs.adb.enable = true;
  users.users.tsuneko.extraGroups = ["adbusers"];
  environment.systemPackages = with pkgs; [
    (
      neovim.override {
      vimAlias = true;
      configure = {
               packages.myPlugins = with pkgs.vimPlugins; {
          start = [ nerdtree vim-nix ]; 
          opt = [];
        };
        customRC = ''
         set number
        '';
      }; 
    }
  )
     
     exa
     zoxide
     gping
     procs
     neofetch
     btop 
     nixpkgs-fmt
     pv
     git
     jq
     openssl
     imagemagick
     brlaser
     ghostscript
     python3
     fdupes
     zip
     unzip
     slurp
     ranger
     cava
   ];
    programs.neovim.enable = true;
    programs.neovim.viAlias = true;
    programs.neovim.vimAlias = true;
    environment.variables = { EDITOR = "vim"; };
};
}


