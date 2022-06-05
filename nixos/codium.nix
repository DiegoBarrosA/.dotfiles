{ pkgs, ... }:
let
  extensions = (with pkgs.vscode-extensions; [
      bbenoist.nix
      ms-python.python
      ms-azuretools.vscode-docker
      pkief.material-icon-theme
    ]) ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
    {
      name = "remote-ssh-edit";
      publisher = "ms-vscode-remote";
      version = "0.47.2";
      sha256 = "1hp6gjh4xp2m1xlm1jsdzxw9d8frkiidhph6nvl24d0h8z34w49g";

    }
{
      name = "simple-dark";
      publisher = "travis";
      version = "1.0.2";
      sha256 = "02nkhl64wkcli89mpf2zxgpkfxil34qd0x7nxz240xr1wv042ak8";

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
