{
  config,
  lib,
  ...
}: {
  plugins.blink-cmp = {
    enable = true;
    setupLspCapabilities = true;
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
        documentation.auto_show = true;
        menu = {
          auto_show = lib.nixvim.mkRaw ''function(ctx) return ctx.mode ~= 'cmdline' end'';
          draw = {
            gap = 1;
            treesitter = ["lsp"];
            columns = [
              {
                __unkeyed-1 = "label";
              }
              {
                __unkeyed-1 = "kind_icon";
                __unkeyed-2 = "kind";
                gap = 1;
              }
              {__unkeyed-1 = "source_name";}
            ];
            components = {
              kind_icon = {
                ellipsis = false;
                # Use mini.icons for kind
                text = lib.nixvim.mkRaw ''
                  function(ctx)
                    if ctx.kind == 'Copilot' then
                      return ''
                    end

                    local kind_icon, _, _ = require('mini.icons').get('lsp', ctx.kind)
                    return kind_icon
                  end
                '';
                # Highlight using mini.icons
                highlight = lib.nixvim.mkRaw ''
                  function(ctx)
                    local _, hl, _ = require('mini.icons').get('lsp', ctx.kind)
                    return hl
                  end
                '';
              };
            };
          };
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
        "<Tab>" = ["select_next" "fallback"];
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
          "buffer"
          "path"
        ];
      };
    };
  };
}
