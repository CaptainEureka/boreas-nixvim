{
  plugins = {
    # NVIM-CMP
    cmp-nvim-lsp.enable = false;
    cmp-nvim-lsp-document-symbol.enable = false;
    cmp-nvim-lsp-signature-help.enable = false;
    cmp-nvim-lua.enable = false;
    lspkind = {
      enable = false;
      preset = "codicons";
      cmp.enable = true;
    };
    cmp = {
      enable = false;
      settings = {
        snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";
        experimental = {
          ghost_text = true;
        };

        mapping = {
          "<CR>" = "cmp.mapping.confirm({select = true})";
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-e>" = "cmp.mapping.close()";
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
          "<Down>" = "cmp.mapping(cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }), {'i'})";
          "<Up>" = "cmp.mapping(cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }), {'i'})";
        };

        sources = [
          {name = "nvim_lsp";}
          {
            name = "buffer";
            option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
          }
          {name = "path";}
          {name = "nvim_lua";}
          {name = "luasnip";}
          {name = "calc";}
        ];
      };
    };
  };

  extraConfigLuaPre = ''
    vim.loader.enable()

    local has_words_before = function()
      unpack = unpack or table.unpack
      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
      return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
    end
  '';
}
