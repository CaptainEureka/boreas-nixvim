{pkgs, ...}: {
  imports = [
    # ./alpha
    ./barbar
    ./copilot
    ./diffview
    ./efm
    ./hardtime
    ./hop
    ./lsp
    ./lualine
    ./noice
    ./ollama
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
    gitsigns.enable = true;
    neogit.enable = true;
    fugitive.enable = true;
    hmts.enable = true;
    navic = {
      enable = true;
      lsp.preference = [
        "nil_ls"
        "efm"
      ];
    };
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

  plugins.rust-tools = {
    enable = true;
    server = {
      files.excludeDirs = [".devenv" ".direnv"];
    };
    extraOptions = {
      completion = {autocomplete = true;};
    };
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

  extraPlugins = with pkgs.vimPlugins; [
    FixCursorHold-nvim
  ];
}