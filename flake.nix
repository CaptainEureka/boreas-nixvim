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
        overlays = [
          inputs.neovim-nightly-overlay.overlays.default
        ];

        boreas = inputs.nixvim.lib.evalNixvim {
          inherit system;
          modules = [./boreas];
        };
        boreas-nightly = boreas.extendModules {
          modules = [
            {nixpkgs = {inherit overlays;};}
          ];
        };
      in {
        treefmt = {
          projectRootFile = "flake.nix";
          flakeCheck = true;
          programs = {
            alejandra.enable = true;
            statix.enable = true;
          };
        };

        checks = boreas.config.build.test;

        packages = {
          default = boreas.config.build.package;
          nightly = boreas-nightly.config.build.package;
        };
      };
    };
}
