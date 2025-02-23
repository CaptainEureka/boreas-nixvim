{
  lib,
  config,
  pkgs,
  ...
}: {
  plugins.luasnip = {
    enable = true;
    settings = {
      enable_autosnippets = true;
      store_selection_keys = "<Tab>";
    };
    fromVscode = [
      {
        lazyLoad = true;
        paths = "${pkgs.vimPlugins.friendly-snippets}";
      }
    ];
  };

  plugins.blink-cmp.settings = lib.mkIf config.plugins.luasnip.enable {
    snippets.preset = "luasnip";
    sources.default = [
      "snippets"
    ];
  };
}
