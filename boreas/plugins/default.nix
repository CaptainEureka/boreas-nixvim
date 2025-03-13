{
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    ./copilot
    ./dressing
    ./efm
    ./gitlinker
    ./gitsigns
    ./hardtime
    ./indent-blankline
    ./lsp
    ./luasnip
    ./lualine
    ./lz-n
    ./mini
    ./markview
    ./neogen
    ./neotest
    ./notify
    ./noice
    ./navic
    ./oil
    ./rustacean-nvim
    ./telescope
    ./treesitter
    ./trouble
    ./typescript-tools
    ./schemastore
    ./smart-splits
    ./which-key
  ];

  plugins = {
    barbecue.enable = true;
    flash.enable = true;
    fugitive.enable = true;
    hmts.enable = true;
    nix.enable = true;
  };
}
