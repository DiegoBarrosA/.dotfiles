{ config, pkgs,lib, ... }: {
  config = {
    environment.systemPackages = with pkgs; [
      cmatrix
      mpc_cli
      libnotify
      spotdl
      pipes-rs
      du-dust
      exa
      zoxide
      gping
      procs
      neofetch
      btop
      nixfmt
      pv
      git
      jq
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
      #ranger
      fff
      cava
      brightnessctl
      ncmpcpp
      pulseaudio
      android-tools
      cmake
      wget
      xdg-user-dirs
      yt-dlp
      ffmpeg

    ];
    nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
      "unrar"
    ];
    nixpkgs.overlays = [
      (self: super: {
        ncmpcpp = super.ncmpcpp.override {
          visualizerSupport = true;
          clockSupport = true;
        };
      })
    ];
    programs.adb.enable = true;
    users.users.diego.extraGroups = [ "adbusers" ];
    services.mpd = {
      enable = true;
      musicDirectory = "/home/diego/Music";
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
      network.listenAddress =
        "any"; # if you want to allow non-localhost connections
      #  startWhenNeeded = true; # systemd feature: only start MPD service upon connection to its socket
    };

    services.mpd.user = "diego";
    systemd.services.mpd.environment = {
      # https://gitlab.freedesktop.org/pipewire/pipewire/-/issues/609
      XDG_RUNTIME_DIR =
        "/run/user/1000"; # User-id 1000 must match above user. MPD will look inside this directory for the PipeWire socket.
    };
  };

}
