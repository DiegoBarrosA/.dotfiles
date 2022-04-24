{ config, pkgs, ... }:
{
  # environment.etc = {
  #  "resolv.conf".text = "OpenNIC  216.238.104.56\n";
  #};

  environment.variables = {
        # This will become a global environment variable
        "QMK_HOME" = "/home/tsuneko/Projects/qmk_firmware"; 
	"EDITOR" = "vim";
        "QT_STYLE_OVERRIDE"="kvantum";
       "_JAVA_AWT_WM_NONREPARENTING"="1";
       "MOZ_ENABLE_WAYLAND" = "1";
       "XDG_CURRENT_DESKTOP" = "sway"; 
             "DSSI_PATH"   = "$HOME/.dssi:$HOME/.nix-profile/lib/dssi:/run/current-system/sw/lib/dssi";
      "LADSPA_PATH" = "$HOME/.ladspa:$HOME/.nix-profile/lib/ladspa:/run/current-system/sw/lib/ladspa";
      "LV2_PATH"    = "$HOME/.lv2:$HOME/.nix-profile/lib/lv2:/run/current-system/sw/lib/lv2";
      "LXVST_PATH"  = "$HOME/.lxvst:$HOME/.nix-profile/lib/lxvst:/run/current-system/sw/lib/lxvst";
      "VST_PATH"    = "$HOME/.vst:$HOME/.nix-profile/lib/vst:/run/current-system/sw/lib/vst";
      "VST3_PATH"   = "$HOME/.vst3:$HOME/.nix-profile/lib/vst3:/run/current-system/sw/lib/vst3"; 
      "RANGER_LOAD_DEFAULT_RC" = "false";
      "OCL_ICD_VENDORS" =" `nix-build '<nixpkgs>' --no-out-link -A rocm-opencl-icd`/etc/OpenCL/vendors/";


};
}
