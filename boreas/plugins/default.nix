{
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    ./dressing
    ./fzf-lua
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
    ./telescope
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
    hmts.enable = true;
    nix.enable = true;
  };
}
