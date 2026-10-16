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
  ];
}
