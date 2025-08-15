{
  description = "Ilyass's NixOS Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }: {
    nixosConfigurations.nixos-ilyass = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { };
      modules = [
        ./hosts/nixos-ilyass/configuration.nix
        home-manager.nixosModules.home-manager
      ];
    };
  };
}
