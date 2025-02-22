{pkgs, ...}: {
  imports = [
    ./dressing
    ./efm
    ./gitlinker
    ./gitsigns
    ./hardtime
    ./lsp
    ./lualine
    ./mini
    ./neogen
    ./neotest
    ./noice
    ./navic
    ./telescope
    ./toggleterm
    ./treesitter
    ./schemastore
  ];

  plugins = {
    barbecue.enable = true;
    comment.enable = true;
    flash.enable = true;
    fugitive.enable = true;
    hmts.enable = true;
    neoscroll.enable = true;
    nix.enable = true;
    nvim-autopairs.enable = true;
    markview.enable = true;
    vim-surround.enable = true;
    trouble.enable = true;
  };

  plugins.notify = {
    enable = true;
    settings = {
      stages = "fade_in_slide_out";
      timeout = 300;
    };
  };

  plugins.oil = {
    enable = true;
    settings.use_default_keymaps = true;
  };

  plugins.indent-blankline = {
    enable = true;
    settings.scope = {
      enabled = true;
      show_start = true;
    };
  };

  plugins.rustaceanvim = {
    enable = true;
    settings = {
      server.default_settings.files.excludeDirs = [
        ".devenv"
        ".direnv"
      ];

      completion = {autocomplete = true;};
    };
  };

  plugins.typescript-tools = {
    enable = true;
  };

  plugins.which-key = {
    enable = true;
    settings.key-labels = {
      "<space>" = "SPC";
      "<leader>" = "SPC";
      "<cr>" = "RET";
      "<tab>" = "TAB";
    };
  };
}
