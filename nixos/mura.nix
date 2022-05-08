{ config, pkgs, ... }:
{
imports = [
./apps.nix
./sway.nix
./devices.nix
./gaming.nix
./hosts.nix
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
		   timeout = 0;
		   };

		   efi.efiSysMountPoint = "/boot"; 
}; 
	kernelPackages = pkgs.linuxPackages_zen;
	kernelParams = [ "acpi_backlight=vendor" "quiet" "loglevel=3" "vt.global_cursor_default=0" ];
 }; 


  networking.hostName = "Mura"; # Define your hostname.

 # The global useDHCP flag is deprecated, therefore explicitly set to false here. 
   # Per-interface useDHCP will be mandatory in the future, so this generated config
  # replicates the default behaviour.
   networking.useDHCP = false;
   networking.interfaces.wlp1s0.useDHCP = true; 
   networking.networkmanager.enable = true;
  # Set your time zone.
 
  # Select internationalisation properties.
  time.timeZone = "America/Santiago";  
  


  i18n.defaultLocale = "en_US.UTF-8";
    
console = {                                                                                     
      earlySetup = true;                                                                            
      font = "${pkgs.terminus_font}/share/consolefonts/ter-132n.psf.gz";                            
      packages = with pkgs; [ terminus_font ];                                                      
      keyMap = "es";                                                                                
 };             
  services.auto-cpufreq.enable = true; 
  services.openssh.enable = true;
}
