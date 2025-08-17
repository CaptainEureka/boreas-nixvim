{
  lib,
  config,
  ...
}: let
  helpers = lib.nixvim;
  options = {
    silent = true;
    nowait = true;
  };
in {
  plugins.telescope = {
    enable = false;
    extensions = {
      ui-select = {
        enable = false;
        # disable codeactions
        settings.specific_opts.codeactions = false;
      };
    };
    settings.defaults = {
      prompt_prefix = "  ";
      selection_caret = " ";
      layout_strategy = "horizontal";
      layout_config.horizontal = {
        width = 0.9;
        preview_width = 0.6;
      };
    };
  };

  keymaps = lib.mkIf config.plugins.telescope.enable [
    {
      key = "<leader>/";
      action = helpers.mkRaw ''
        function()
          local theme = require('telescope.themes').get_ivy({ previewer=false })
          require('telescope.builtin').current_buffer_fuzzy_find(theme)
        end
      '';
      options.desc = "fuzzy search current buffer";
    }
    {
      key = "<leader>sb";
      action = "<CMD>:Telescope buffers<CR>";
      options.desc = "search buffers";
    }
    {
      key = "<leader>sf";
      action = "<CMD>:Telescope find_files<CR>";
      options.desc = "search files";
    }
    {
      key = "<leader>sr";
      action = "<CMD>:Telescope oldfiles<CR>";
      options.desc = "search recent files";
    }
    {
      key = "<leader>sh";
      action = "<CMD>:Telescope help_tags<CR>";
      options.desc = "search help";
    }
    {
      key = "<leader>sw";
      action = "<CMD>:Telescope grep_string<CR>";
      options.desc = "search word under cursor";
    }
    {
      key = "<leader>sg";
      action = "<CMD>:Telescope live_grep<CR>";
      options.desc = "search grep";
    }
    {
      key = "<leader>sd";
      action = "<CMD>:Telescope diagnostics<CR>";
      options.desc = "search diagnostics";
    }
    {
      key = "<leader>ss";
      action = "<CMD>:Telescope lsp_document_symbols<CR>";
      options.desc = "search symbols";
    }
  ];
}
