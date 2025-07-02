{pkgs, lib, ... }: {

  imports = [
    ./desktop/ghostty/ghostty.nix
    ./desktop/sway/sway.nix
    ./desktop/tofi/tofi.nix
  ];

  ghostty_module.enable = lib.mkDefault true;
  sway_module.enable = lib.mkDefault true;
  tofi_module.enable = lib.mkDefault true;

}