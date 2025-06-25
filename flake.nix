{
  description = "Boreas: CaptainEureka's Nixvim Configuration";

  inputs = {
    systems.url = "github:nix-systems/default";
    nixpkgs.url = "github:NixOS/nixpkgs/master";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = {
    nixpkgs,
    flake-parts,
    systems,
    ...
  } @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = import systems;
      perSystem = {
        pkgs,
        system,
        ...
      }: let
        nixvim = inputs.nixvim.legacyPackages.${system};
      in {
        packages = {
          default = nixvim.makeNixvimWithModule {
            inherit pkgs;
            module = {
              imports = [./boreas];
            };
          };
        };
      };
    };
}
