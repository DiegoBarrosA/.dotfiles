{ config, pkgs, ... }: {

  imports = [
    ./apps.nix
    ./gnome.nix
    ./devices.nix
    ./gaming.nix
    ./hosts.nix
    ./proaudio.nix
    ./services.nix
    ./terminal.nix
    ./users.nix
    ./environment.nix
    ./nvim.nix
    ./virtmanager.nix
    ./codium.nix
  ];
  boot = {
    initrd.verbose = false;
    consoleLogLevel = 3;
    kernelModules =
      [ "amdgpu " "base" "plymouth" "systemd" "fsck" "sd-plymouth" ];
    plymouth.enable = true;
    plymouth.font =
      "${pkgs.noto-fonts}/share/fonts/truetype/noto/NotoSans-Regular.ttf";
    loader = {
      systemd-boot = {
        enable = true;

      };
      timeout = 0;
      efi.efiSysMountPoint = "/boot";
      efi.canTouchEfiVariables = true;
    };
    kernelPackages = pkgs.linuxPackages_zen;
    kernelParams = [
      "quiet"
      "loglevel=3"
      "vt.global_cursor_default=0"
      "boot.shell_on_fail"
      "rd.systemd.show_status=false"
      "rd.udev.log_level=3"
    ];
  };
  networking.hostName = "cobalto-negro";
  networking.useDHCP = false;
  networking.interfaces.enp6s0.useDHCP = true;
  time.timeZone = "America/Santiago";
  i18n.defaultLocale = "en_US.UTF-8";
  console.font = "Lat2-Terminus16";
  console.keyMap = "us";
  services.openssh.enable = true;

  fileSystems = {
    "/".options = [ "compress=zstd" ];
    "/home".options = [ "compress=zstd" ];
    "/nix".options = [ "compress=zstd" "noatime" ];

  };
}
