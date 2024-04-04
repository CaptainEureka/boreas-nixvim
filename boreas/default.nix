{
  imports = [
    (import ./colorschemes "catppuccin")
    ./autocommands.nix
    ./completions.nix
    ./keymaps.nix
    ./config.nix
    ./options.nix
    ./plugins
  ];
}
