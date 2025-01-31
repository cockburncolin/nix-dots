{
  description = "Colin's config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

		stylix = {
			url = "github:danth/stylix/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
		};
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations = {
			desktop = nixpkgs.lib.nixosSystem {
				specialArgs = {inherit inputs;};
				modules = [
				./hosts/desktop/configuration.nix
				./modules/applications/games-x.nix
				./modules/system/base-uefi.nix
				inputs.home-manager.nixosModules.default
				];
			};

			laptop = nixpkgs.lib.nixosSystem {
				specialArgs = {inherit inputs;};
				modules = [
				./hosts/laptop/configuration.nix
				./modules/applications/x-apps.nix
				./modules/system/base-uefi.nix
				];
			};
	  };
  };
}
