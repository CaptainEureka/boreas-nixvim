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
    ./lualine
    ./luasnip
    ./lz-n
    ./markview
    ./mini
    ./navic
    ./noice
    ./notify
    ./oil
    ./octo
    ./rustacean-nvim
    ./schemastore
    ./smart-splits
    ./telescope
    ./treesitter
    ./trouble
    ./typescript-tools
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
