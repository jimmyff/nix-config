# Sway module
{ pkgs, lib, config, ... }: {

    options = {

        sway_module.enable = lib.mkEnableOption "enables sway_module";

    };

    config = lib.mkIf config.sway_module.enable {

      # Enable pointer
      home.pointerCursor.sway.enable = true;

    };
}