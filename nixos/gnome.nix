{ config, pkgs, ...}:
{

config = {
	services.xserver.enable = true;
	services.xserver.desktopManager.gnome.enable = true;
	services.xserver.displayManager.gdm.wayland = true;
	services.xserver.displayManager.gdm.enable = true;
	services.xserver.layout = "us";
	

 	environment.systemPackages = with pkgs; [
	gnome.gnome-tweaks
	librewolf
];
};
}
