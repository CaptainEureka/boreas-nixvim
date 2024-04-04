{
  imports = [
    (import ./colorschemes/default.nix "catppuccin")
    ./autocommands.nix
    ./completions.nix
    ./keymaps.nix
    ./config.nix
    ./options.nix
    ./plugins
  ];
}
