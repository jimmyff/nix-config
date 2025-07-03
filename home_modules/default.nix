{pkgs, lib, ... }: {

  imports = [
    ./desktop/catppuccin.nix
    ./desktop/kitty/kitty.nix
    ./desktop/ghostty/ghostty.nix
    ./desktop/sway/sway.nix
    ./desktop/waybar/waybar.nix
    ./desktop/tofi/tofi.nix
  ];

  catppuccin_module.enable = lib.mkDefault true;

  # Terminals
  kitty_module.enable = lib.mkDefault true;
  ghostty_module.enable = lib.mkDefault false;

  sway_module.enable = lib.mkDefault true;
  waybar_module.enable = lib.mkDefault true;
  tofi_module.enable = lib.mkDefault false;

}