{
  description = "Ilyass's NixOS Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    kwin-effects-forceblur = {
      url = "github:taj-ny/kwin-effects-forceblur";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, kwin-effects-forceblur, ... }@inputs: {
    nixosConfigurations = {
      # Home laptop configuration
      nixos-ilyass = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = [
          ./hosts/nixos-ilyass/configuration.nix
          home-manager.nixosModules.home-manager
        ];
      };

      # Work laptop configuration
      nixos-ilyass-work-laptop = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = [
          ./hosts/nixos-ilyass-work-laptop/configuration.nix
          home-manager.nixosModules.home-manager
        ];
      };
    };
  };
}
