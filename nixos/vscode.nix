{ pkgs, ... }:

let
  extensions = (with pkgs.vscode-extensions; [
      ms-python.python
      ms-azuretools.vscode-docker
      asvetliakov.vscode-neovim
      pkief.material-icon-theme      
      bbenoist.nix
      arcticicestudio.nord-visual-studio-code
    ]) ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
    {
      name = "remote-ssh-edit";
      publisher = "ms-vscode-remote";
      version = "0.47.2";
      sha256 = "1hp6gjh4xp2m1xlm1jsdzxw9d8frkiidhph6nvl24d0h8z34w49g";
    }
{
      publisher = "ritwickdey";
      name = "LiveServer";
      version = "5.7.5";
      sha256 = "0afjp8jr1s0f3ag0q8kw5d8cyd5fh6vzkfx2wdqq4pihm7ivp9xc";
    }
  ];
  vscodium-with-extensions = pkgs.vscode-with-extensions.override {
    vscode = pkgs.vscodium;
    vscodeExtensions = extensions;
  };
in {
  environment.systemPackages = [
    vscodium-with-extensions
  ];
}
