{
  description = "My homelab NixOS config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    sops-nix.url = "github:Mic92/sops-nix";
    sops-nix.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, sops-nix, ...}: {
    nixosConfigurations.zion = nixpkgs.lib.nixosSystem {
      modules = [ 
        ./hosts/nixos

	sops-nix.nixosModules.sops
      ];
    };
  };
}

