{lib, ...}: {
  plugins.blink-cmp = {
    enable = true;
    settings = {
      appearance = {
        nerd_font_variant = "mono";
        use_nvim_cmp_as_default = true;
      };
      completion = {
        accept = {
          auto_brackets = {
            enabled = true;
            kind_resolution.enabled = true;
            semantic_token_resolution = {
              enabled = false;
            };
          };
        };
        documentation = {
          auto_show = true;
        };
        ghost_text.enabled = true;
        menu = {
          auto_show = lib.nixvim.mkRaw ''function(ctx) return ctx.mode ~= 'cmdline' end'';
          draw.treesitter = ["lsp"];
        };
        list.selection = {
          preselect = lib.nixvim.mkRaw ''function(ctx) return ctx.mode ~= 'cmdline' end'';
          auto_insert = lib.nixvim.mkRaw ''function(ctx) return ctx.mode ~= 'cmdline' end'';
        };
      };
      keymap = {
        "<C-space>" = ["show" "show_documentation" "hide_documentation"];
        "<CR>" = ["accept" "fallback"];
        "<C-e>" = ["hide"];
        "<Tab>" = ["show" "select_next" "fallback"];
        "<S-Tab>" = ["select_prev" "fallback"];
        "<C-f>" = ["scroll_documentation_down" "fallback"];
        "<C-b>" = ["scroll_documentation_up" "fallback"];
      };
      signature = {
        enabled = true;
        trigger.enabled = true;
      };
      sources = {
        default = [
          "lsp"
          "path"
          "buffer"
          "cmdline"
        ];
      };
    };
  };
}
