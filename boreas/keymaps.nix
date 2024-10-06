{
  lib,
  helpers,
  ...
}: let
  defaultOptions = {
    silent = true;
    nowait = true;
  };
  addOptions = attrset: lib.recursiveUpdate attrset {options = defaultOptions;};
in {
  keymaps = map addOptions [
    {
      key = "<leader>w";
      action = "<CMD>:w<CR>";
      options.desc = "[W]rite";
    }
    {
      key = "<leader>q";
      action = "<CMD>:q<CR>";
      options.desc = "[Q]uit";
    }
    {
      key = "<leader>c";
      action = "<CMD>:bd<CR>";
      options.desc = "[C]lose buffer";
    }
    {
      key = "<leader>?";
      action = "<CMD>:WhichKey <leader><CR>";
      options.desc = "[?] Help";
    }
    {
      key = "<leader>/";
      action = helpers.mkRaw ''
        function()
          require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_ivy({
            previewer=false
          }))
        end
      '';
      options.desc = "[/] Fuzzy search in current buffer";
    }
    {
      key = "<leader>sb";
      action = "<CMD>:Telescope buffers<CR>";
      options.desc = "[S]earch [B]uffers";
    }
    {
      key = "<leader>sf";
      action = "<CMD>:Telescope find_files<CR>";
      options.desc = "[S]earch [F]iles";
    }
    {
      key = "<leader>sr";
      action = "<CMD>:Telescope oldfiles<CR>";
      options.desc = "[S]earch [R]ecent files";
    }
    {
      key = "<leader>sh";
      action = "<CMD>:Telescope help_tags<CR>";
      options.desc = "[S]earch [H]elp";
    }
    {
      key = "<leader>sw";
      action = "<CMD>:Telescope grep_string<CR>";
      options.desc = "[S]earch current [W]ord";
    }
    {
      key = "<leader>sg";
      action = "<CMD>:Telescope live_grep<CR>";
      options.desc = "[S]earch [G]rep";
    }
    {
      key = "<leader>sd";
      action = "<CMD>:Telescope diagnostics<CR>";
      options.desc = "[S]earch [D]iagnostics";
    }
    {
      key = "<leader>ss";
      action = "<CMD>:Telescope lsp_document_symbols<CR>";
      options.desc = "[S]earch [S]ymbols";
    }
    # Neotest
    {
      key = "<leader>ntr";
      action = helpers.mkRaw ''
        function()
          require("neotest").run.run()
        end
      '';
      options.desc = "[N]eo[T]est [R]un";
    }
    {
      key = "<leader>ntf";
      action = helpers.mkRaw ''
        function()
          require("neotest").run.run(vim.fn.expand("%"))
        end
      '';
      options.desc = "[N]eo[T]est [R]un [F]ile";
    }
    {
      key = "<leader>ntw";
      action = helpers.mkRaw ''
        function()
          require("neotest").watch.toggle(vim.fn.expand("%"))
        end
      '';
      options.desc = "[N]eo[T]est [R]un [F]ile";
    }
    {
      key = "<leader>ntw";
      action = helpers.mkRaw ''
        function()
          require("neotest").watch.toggle(vim.fn.expand("%"))
        end
      '';
      options.desc = "[N]eo[T]est [R]un [F]ile";
    }
    {
      key = "<leader>nts";
      action = helpers.mkRaw ''
        function()
          require("neotest").summary.toggle()
        end
      '';
      options.desc = "[N]eo[T]est [S]ummary";
    }
    {
      key = "<leader>nto";
      action = helpers.mkRaw ''
        function ()
          require("neotest").output_panel.toggle()
        end
      '';
      options.desc = "[N]eo[T]est [O]utput";
    }
    # Trouble keymaps
    {
      key = "<leader>xx";
      action = "<CMD>:Trouble diagnostics toggle<CR>";
      options.desc = "Trouble";
    }
    {
      key = "<leader>xq";
      action = "<CMD>:Trouble qflist toggle<CR>";
      options.desc = "Trouble [Q]uickfix";
    }
    {
      key = "<leader>xl";
      action = "<CMD>:Trouble loclist toggle<CR>";
      options.desc = "Trouble [L]oclist";
    }
    {
      key = "<leader>xR";
      action = "<CMD>:Trouble lsp_references toggle<CR>";
      options.desc = "Trouble LSP [R]eferences";
    }
  ];
}
