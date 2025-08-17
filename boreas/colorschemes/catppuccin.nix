{
  colorschemes.catppuccin = {
    enable = true;
    settings = {
      background = {
        dark = "mocha";
        light = "latte";
      };
      color_overrides = {
        mocha = {
          mantle = "#1e1e2e";
        };
      };
      flavour = "mocha";
      lazyLoad.enable = true;
      show_end_of_buffer = true;
      no_italic = true;
      terminal_colors = true;

      integrations = {
        barbecue = {
          alt_background = true;
          bold_basename = true;
          dim_context = true;
          dim_dirname = true;
        };
        blink_cmp = true;
        cmp = true;
        diffview = true;
        fidget = true;
        fzf = true;
        flash = true;
        gitsigns = true;
        harpoon = true;
        indent_blankline = {
          enabled = true;
          colored_indent_levels = true;
        };
        lsp_trouble = true;
        markdown = true;
        mini.enabled = true;
        navic.enabled = true;
        native_lsp.enabled = true;
        neogit = true;
        noice = true;
        notify = true;
        octo = true;
        snacks = {
          enabled = true;
          indent_scope_color = "lavender";
        };
        telescope.enabled = true;
        treesitter = true;
        treesitter_context = true;
        which_key = true;
      };
    };
  };
}
