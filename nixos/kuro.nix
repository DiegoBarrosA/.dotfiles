{ config, pkgs, ... }:
{

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
./devtools.nix
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

 # The global useDHCP flag is deprecated, therefore explicitly set to false here. 
   # Per-interface useDHCP will be mandatory in the future, so this generated config
  # replicates the default behaviour.
   networking.useDHCP = false;
   networking.interfaces.enp6s0.useDHCP = true;
  # Set your time zone.
 
  # Select internationalisation properties.
  time.timeZone = "America/Santiago";  
  i18n.defaultLocale = "en_US.UTF-8";
    
  console.font = "Lat2-Terminus16";

  console.keyMap = "us";
   # Enable the OpenSSH daemon.
  services.openssh.enable = true;
}
