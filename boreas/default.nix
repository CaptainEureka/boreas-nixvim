{
  imports = [
    (import ./colorschemes "catppuccin")
    ./autocommands.nix
    ./completions
    ./keymaps.nix
    ./config.nix
    ./options.nix
    ./plugins
    ./plugins/lsp/nvim-metals.nix
  ];
}
