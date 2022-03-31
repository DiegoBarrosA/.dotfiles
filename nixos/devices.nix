{ config, pkgs, ... }:
{
config = {
      environment.systemPackages = with pkgs;  [
      android-file-transfer
      sshfs
      libimobiledevice
      ifuse 
      exfatprogs
    ];
  programs.adb.enable = true;  
  services.usbmuxd.enable = true;
};
}
