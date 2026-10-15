{
  pkgs,
  config,
  lib,
  inputs,
  ...
}: {
  imports = [
    ./colorschemes
    ./completions
    ./config
    ./plugins
    ./plugins/lsp/nvim-metals.nix
  ];
}
