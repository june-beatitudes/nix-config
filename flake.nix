{
  description = "Juniper Beatitudes' Nix System";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }: {
    nixosConfigurations.juniper-nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
        /etc/nixos/hardware-configuration.nix
      ];
    };
  };
}
