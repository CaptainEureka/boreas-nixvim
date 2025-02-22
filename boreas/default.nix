{
  imports = [
    (import ./colorschemes "catppuccin")
    ./autocommands.nix
    ./completions
    ./keymaps.nix
    ./config.nix
    ./plugins
    ./plugins/lsp/nvim-metals.nix
  ];
}
