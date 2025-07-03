{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    
    catppuccin.url = "github:catppuccin/nix";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... } @inputs: {
  
    nixosConfigurations = {

      # Jimmy's Pixelbook
      nixelbook = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [

          # might not be needed
          inputs.home-manager.nixosModules.home-manager

          inputs.catppuccin.nixosModules.catppuccin

          ./hosts/nixelbook/configuration.nix
          ./nixos_modules/default.nix
        ];
      };
    };

    homeManagerModules.default = ./home_modules;

  };
}
