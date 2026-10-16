{
  lib,
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ./dressing
    ./fff
    ./gitsigns
    ./hardtime
    ./lsp
    ./lualine
    ./luasnip
    ./lz-n
    ./markview
    ./mini
    ./noice
    ./notify
    ./oil
    ./rustacean-nvim
    ./schemastore
    ./smart-splits
    ./snacks
    ./treesitter
    ./trouble
    ./typescript-tools
    ./which-key
  ];

  plugins = {
    barbecue.enable = true;
    flash.enable = true;
    fidget.enable = true;
    gitlinker.enable = true;
    hmts.enable = false;
    nix.enable = true;
  };
}
