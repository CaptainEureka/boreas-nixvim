{
  plugins.navic = {
    enable = true;
    settings = {
      highlight = true;
      separator = "   ";
      lsp = {
        auto_attach = true;
        preference = [
          "nil_ls"
          "dockerls"
          "gopls"
          "gleam"
          "jsonls"
          "lua-ls"
          "pyright"
          "ruff-lsp"
          "tsserver"
          "terraformls"
          "yamlls"
          "efm"
        ];
      };
    };
  };
}
