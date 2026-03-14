{
  description = "Boreas: CaptainEureka's Nixvim Configuration";

  inputs = {
    systems.url = "github:nix-systems/default";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    treefmt-nix.url = "github:numtide/treefmt-nix";
    nixvim.url = "github:nix-community/nixvim";
    neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = {
    flake-parts,
    systems,
    ...
  } @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = import systems;
      imports = [
        inputs.treefmt-nix.flakeModule
      ];

      perSystem = {
        pkgs,
        config,
        system,
        ...
      }: let
        nixvim = inputs.nixvim.legacyPackages.${system};
        overlays = [
          inputs.neovim-nightly-overlay.overlays.default
        ];
      in {
        treefmt = {
          projectRootFile = "flake.nix";
          flakeCheck = true;
          programs = {
            alejandra.enable = true;
            statix.enable = true;
          };
        };

        packages = let
          makeNixvim = {
            modules,
            extraModules ? [],
            extraConfig ? {},
          }:
            nixvim.makeNixvimWithModule {
              inherit pkgs;
              module =
                {
                  imports = modules ++ extraModules;
                }
                // extraConfig;
            };
        in {
          default = makeNixvim {
            modules = [./boreas];
          };
          nightly = makeNixvim {
            modules = [./boreas {nixpkgs = {inherit overlays;};}];
          };
        };
      };
    };
}
