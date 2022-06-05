{ config, pkgs, ... }: {
  config = {

    environment.systemPackages = with pkgs; [

      ##Plugins
      ##LV2
      swh_lv2
      mda_lv2
      ams-lv2
      aether-lv2
      metersLv2
      gxplugins-lv2
      gxmatcheq-lv2
      rkrlv2
      sfizz
      drumgizmo
      distrho
      bshapr
      magnetophonDSP.CharacterCompressor
      tunefish
      plujain-ramp
      magnetophonDSP.RhythmDelay
      mod-distortion
      x42-plugins
      infamousPlugins
      mooSpace
      fmsynth
      boops
      noise-repellent
      eq10q
      bsequencer
      magnetophonDSP.LazyLimiter
      talentedhack
      magnetophonDSP.MBdistortion
      artyFX
      speech-denoiser
      fverb
      kapitonov-plugins-pack
      bschaffl
      x42-gmsynth
      ninjas2
      fomp
      ##LADSPA
      ladspaPlugins
      AMB-plugins
      nova-filters
      caps
      autotalent
      zam-plugins
      tap-plugins
      lsp-plugins
      FIL-plugins

      ##utilities
      ardour
      zrythm
      breeze-icons
      carla
      hydrogen
      tenacity
    ];
  };
}

