{ config, pkgs, ...}:

{
    
config = { 
nixpkgs.overlays = [ (    self: super:
{
  ncmpcpp = super.ncmpcpp.override {
    visualizerSupport = true;
    clockSupport = true;
  };
})];
  programs.tmux.enable = true;
  programs.adb.enable = true;
  users.users.tsuneko.extraGroups = ["adbusers"];
  environment.systemPackages = with pkgs; [
( neovim.override {
      vimAlias = true;
      configure = {
               packages.myPlugins = with pkgs.vimPlugins; {
          start = [ nerdtree vim-nix ]; 
          opt = [];
        };
        customRC = ''
         set number
         nnoremap <C-n> :NERDTree<CR> 

         '';
      }; 
    }
  )
     
     du-dust     
     gnumake
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
     wireguard-tools
     openssl
     imagemagick
     brlaser
     ghostscript
     nixops
     python3
     fdupes
     zip
     unzip
     slurp
     ranger
     cava
     brightnessctl
     ncmpcpp
     pulseaudio
     android-tools
     cmake
     wget
     xdg-user-dirs
   ];
    programs.neovim.enable = true;
    programs.neovim.viAlias = true;
    programs.neovim.vimAlias = true;
    environment.variables = { EDITOR = "vim"; };
services.mpd = {
  enable = true;
  musicDirectory = "/home/tsuneko/Music";
  extraConfig = ''
   audio_output {
    type "pipewire"
    name "My PipeWire Output"
  } 
   audio_output {
       type            "fifo"
        name            "Visualizer feed"
         path            "/tmp/mpd.fifo"
        format          "44100:16:2"
 }
  '';

  # Optional:
network.listenAddress = "any"; # if you want to allow non-localhost connections
#  startWhenNeeded = true; # systemd feature: only start MPD service upon connection to its socket
};

services.mpd.user = "tsuneko";
systemd.services.mpd.environment = {
    # https://gitlab.freedesktop.org/pipewire/pipewire/-/issues/609
    XDG_RUNTIME_DIR = "/run/user/1000"; # User-id 1000 must match above user. MPD will look inside this directory for the PipeWire socket.
};
};


}

