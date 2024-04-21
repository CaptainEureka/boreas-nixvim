{
  plugins = {
    lsp = {
      enable = true;
      keymaps = {
        silent = true;
        lspBuf = {
          "ff" = "format";
          "gd" = "definition";
          "gr" = "references";
          "gD" = "declaration";
          "gi" = "implementation";
          "<leader>D" = "type_definition";
          "<leader>rn" = "rename";
          "ca" = "code_action";
          "K" = "hover";
        };
      };

      servers = {
        docker-compose-language-service.enable = true;
        dockerls.enable = true;
        gopls.enable = true;
        gleam.enable = true;
        html.enable = true;
        htmx.enable = true;
        jsonls.enable = true;
        marksman.enable = true;
        nil_ls.enable = true;
        lua-ls.enable = true;
        pyright.enable = true;
        ruff-lsp.enable = true;
        taplo.enable = true;
        tailwindcss.enable = true;
        typst-lsp.enable = true;
        tsserver.enable = true;
        terraformls.enable = true;
        sqls.enable = true;
        yamlls.enable = true;
      };
    };
  };
}
