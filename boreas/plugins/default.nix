{pkgs, ...}: {
  imports = [
    # ./alpha
    ./barbar
    ./diffview
    ./efm
    ./hardtime
    ./lsp
    ./lualine
    ./neogen
    ./neotest
    ./noice
    ./navic
    ./smart-splits
    ./telescope
    ./toggleterm
    ./treesitter
    ./zellij
  ];

  plugins = {
    barbecue.enable = true;
    comment.enable = true;
    flash.enable = true;
    fugitive.enable = true;
    gitsigns.enable = true;
    hmts.enable = true;
    neogit.enable = true;
    neoscroll.enable = true;
    nix.enable = true;
    nvim-autopairs.enable = true;
    surround.enable = true;
    trouble.enable = true;
    typst-vim.enable = true;
  };

  plugins.notify = {
    enable = true;
    stages = "fade_in_slide_out";
    timeout = 300;
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
    keyLabels = {
      "<space>" = "SPC";
      "<leader>" = "SPC";
      "<cr>" = "RET";
      "<tab>" = "TAB";
    };
  };
}
