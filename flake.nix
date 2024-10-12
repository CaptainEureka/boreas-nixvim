{
  description = "Boreas: CaptainEureka's Nixvim Configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = {
    nixpkgs,
    flake-parts,
    ...
  } @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

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
          copilot = nixvim.makeNixvimWithModule {
            inherit pkgs;
            module = {
              imports = [./boreas ./boreas/plugins/copilot];
            };
          };
        };
      };
    };
}
