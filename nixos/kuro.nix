{ config, pkgs, ... }: {

  imports = [
    ./apps.nix
    ./sway.nix
    ./devices.nix
    ./gaming.nix
    ./hosts.nix
    ./proaudio.nix
    ./services.nix
    ./terminal.nix
    ./users.nix
    ./environment.nix
    ./nvim.nix
  ];
  boot = {
    loader = {
      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
      };
      timeout = 0;
      efi.efiSysMountPoint = "/boot";
    };
    kernelPackages = pkgs.linuxPackages_zen;
    kernelParams = [ "quiet" "loglevel=3" "vt.global_cursor_default=0" ];
  };
  networking.hostName = "Kuro"; # Define your hostname.
  networking.useDHCP = false;
  networking.interfaces.enp6s0.useDHCP = true;
  time.timeZone = "America/Santiago";
  i18n.defaultLocale = "en_US.UTF-8";
  console.font = "Lat2-Terminus16";
  console.keyMap = "us";
  services.openssh.enable = true;
}
