{lib, ...}: let
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
      action = ''
        function()
          require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_ivy({
            previewer=false
          }))
        end
      '';
      options.desc = "[/] Fuzzy search in current buffer";
      lua = true;
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
    # Alpha (Dashboard)
    {
      key = "<leader>gh";
      action = "<CMD>:Alpha<CR>";
      options.desc = "[G]o [H]ome";
    }
    # Barbar keymaps
    {
      key = "<leader>bc";
      action = "<CMD>:BufferPick<CR>";
      options.desc = "[B]uffer [C]hoose";
    }
    {
      key = "<leader>bd";
      action = "<CMD>:BufferPickDelete<CR>";
      options.desc = "[B]uffer [D]elete pick";
    }
    {
      key = "<leader>bx";
      action = "<CMD>:BufferClose<CR>";
      options.desc = "[B]uffer [C]lose";
    }
    {
      key = "<leader>bn";
      action = "<CMD>:BufferNext<CR>";
      options.desc = "[B]uffer [N]ext";
    }
    {
      key = "<leader>bp";
      action = "<CMD>:BufferPrevious<CR>";
      options.desc = "[B]uffer [P]revious";
    }
    # Overseer
    {
      key = "<leader>or";
      action = "<CMD>:OverseerRun<CR>";
      options.desc = "[O]verseer [R]un";
    }
    {
      key = "<leader>oo";
      action = "<CMD>:OverseerToggle<CR>";
      options.desc = "[O]verseer [O]pen";
    }
    {
      key = "<leader>ot";
      action = "<CMD>:OverseerTaskAction<CR>";
      options.desc = "[O]verseer [T]ask Action";
    }
    # Trouble keymaps
    {
      key = "<leader>xx";
      action = "<CMD>:TroubleToggle<CR>";
      options.desc = "Trouble";
    }
    {
      key = "<leader>xw";
      action = "<CMD>:TroubleToggle workspace_diagnostics<CR>";
      options.desc = "Trouble [W]orkspace";
    }
    {
      key = "<leader>xd";
      action = "<CMD>:TroubleToggle document_diagnostics<CR>";
      options.desc = "Trouble [D]ocument";
    }
    {
      key = "<leader>xq";
      action = "<CMD>:TroubleToggle quickfix<CR>";
      options.desc = "Trouble [Q]uickfix";
    }
    {
      key = "<leader>xl";
      action = "<CMD>:TroubleToggle loclist<CR>";
      options.desc = "Trouble [L]oclist";
    }
    {
      key = "<leader>xR";
      action = "<CMD>:TroubleToggle lsp_references<CR>";
      options.desc = "Trouble LSP [R]eferences";
    }
    # Smart Splits keymaps
    # -- resize splits
    {
      key = "<A-h>";
      action = "require('smart-splits').resize_left";
      options.desc = "Resize left";
      lua = true;
    }
    {
      key = "<A-j>";
      action = "require('smart-splits').resize_down";
      options.desc = "Resize down";
      lua = true;
    }
    {
      key = "<A-k>";
      action = "require('smart-splits').resize_up";
      options.desc = "Resize up";
      lua = true;
    }
    {
      key = "<A-l>";
      action = "require('smart-splits').resize_right";
      options.desc = "Resize right";
      lua = true;
    }
    # -- moving between splits
    {
      key = "<C-h>";
      action = "require('smart-splits').move_cursor_left";
      options.desc = "Move left";
      lua = true;
    }
    {
      key = "<C-j>";
      action = "require('smart-splits').move_cursor_down";
      options.desc = "Move down";
      lua = true;
    }
    {
      key = "<C-k>";
      action = "require('smart-splits').move_cursor_up";
      options.desc = "Move up";
      lua = true;
    }
    {
      key = "<C-l>";
      action = "require('smart-splits').move_cursor_right";
      options.desc = "Move right";
      lua = true;
    }
    # -- swapping buffers between splits
    {
      key = "<leader>h";
      action = "require('smart-splits').swap_buf_left";
      options.desc = "Swap buffer left";
      lua = true;
    }
    {
      key = "<leader>j";
      action = "require('smart-splits').swap_buf_down";
      options.desc = "Swap buffer down";
      lua = true;
    }
    {
      key = "<leader>k";
      action = "require('smart-splits').swap_buf_up";
      options.desc = "Swap buffer up";
      lua = true;
    }
    {
      key = "<leader>l";
      action = "require('smart-splits').swap_buf_right";
      options.desc = "Swap buffer right";
      lua = true;
    }
    # -- Neogit
    {
      key = "<leader>G";
      action = "<CMD>:Neogit<CR>";
      options.desc = "Neogit";
    }
    {
      key = "<leader>Gc";
      action = "<CMD>:DiffviewClose<CR>";
      options.desc = "Open Diffview";
    }
    {
      key = "<leader>Go";
      action = "<CMD>:DiffviewOpen<CR>";
      options.desc = "Open Diffview";
    }
  ];
}
