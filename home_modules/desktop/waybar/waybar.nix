# Sway module
{ pkgs, lib, config, ... }: {

    options = {

        waybar_module.enable = lib.mkEnableOption "enables waybar_module";

    };

    config = lib.mkIf config.waybar_module.enable {

      
      xdg.configFile."waybar/config.jsonc".source = ./config.jsonc;
      xdg.configFile."waybar/styles.css".source = ./styles.css;
     
    };


}