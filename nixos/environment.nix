{ config, pkgs, ... }:
{
    environment.variables = {
        # This will become a global environment variable
       "QT_STYLE_OVERRIDE"="kvantum";
     };
}
