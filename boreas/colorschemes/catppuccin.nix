{
  colorschemes.catppuccin = {
    enable = true;
    settings = {
      background = {
        dark = "mocha";
        light = "latte";
      };
      flavour = "mocha";
      show_end_of_buffer = true;
      no_italic = true;
      transparent_background = false;
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
        navic = {
          enabled = true;
          custom_bg = "NONE";
        };
        native_lsp.enabled = true;
        neogit = true;
        noice = true;
        notify = true;
        telescope.enabled = true;
        treesitter = true;
        treesitter_context = true;
        which_key = true;
      };
    };
  };
}
