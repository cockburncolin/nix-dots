{
  description = "Colin's config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations = {
		desktop = nixpkgs.lib.nixosSystem {
		  specialArgs = {inherit inputs;};
		  modules = [
			./modules/system/base-uefi.nix
			./modules/applications/full.nix
			./hosts/desktop/configuration.nix
		  ];
		};
	  };
  };
}
