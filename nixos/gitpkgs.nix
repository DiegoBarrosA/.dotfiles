{ config, pkgs,  ... }: 



let
  vim-hatsuneMikuCS = pkgs.vimUtils.buildVimPlugin {
    name = "vim-hatsuneMikuCS";
    src = pkgs.fetchFromGitHub {
      owner = "4513ECHO";
      repo = "vim-colors-hatsunemiku";
      rev = "66aa3847d9e38ae2ef5fe7ff2a3ed1059d4ff08f";
      hash = "sha256-2p3sKDVyjkLQ3DgZQW/2g8zr2cXdrnvGPtPBinKWJuA=";
    };
  };
in {
  environment.systemPackages = [
    (pkgs.vim_configurable.customize {
      vimrcConfig.packages.myVimPackage = with pkgs.vimPlugins; {
        start = [ vim-hatsuneMikuCS];
      };

   })
  ];
}

