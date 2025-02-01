{
  description = "Colin's config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

		stylix = {
			url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
		};
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations = {
			default = nixpkgs.lib.nixosSystem {
				specialArgs = {inherit inputs;};
				system = "x86_64-linux";
				modules = [
				./hosts/default/configuration.nix
				inputs.home-manager.nixosModules.default
				];
			};
			desktop = nixpkgs.lib.nixosSystem {
				specialArgs = {inherit inputs;};
				system = "x86_64-linux";
				modules = [
				./hosts/desktop/configuration.nix
				];
			};

			laptop = nixpkgs.lib.nixosSystem {
				specialArgs = {inherit inputs;};
				modules = [
				./hosts/laptop/configuration.nix
				inputs.home-manager.nixosModules.default
				];
			};
	  };
  };
}
