{
  description = "Colin's config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

		disko = {
			url = github:nix-community/disko;
			inputs.nixpkgs.follows = "nixpkgs";
		};
  };

  outputs = { self, disko, nixpkgs, ... }@inputs: {
    nixosConfigurations = {
			default = nixpkgs.lib.nixosSystem {
				specialArgs = {inherit inputs;};
				system = "x86_64-linux";
				modules = [
				./hosts/default/configuration.nix
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
				system = "x86_64-linux";
				modules = [
				./hosts/laptop/configuration.nix
				];
			};
	  };
  };
}
