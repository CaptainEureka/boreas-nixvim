{
  plugins.navic = {
    enable = true;
    separator = "   ";
    lsp.autoAttach = true;
    lsp.preference = [
      "nil_ls"
      "dockerls"
      "gopls"
      "gleam"
      "jsonls"
      "lua-ls"
      "pyright"
      "ruff-lsp"
      "typst-lsp"
      "tsserver"
      "terraformls"
      "yamlls"
      "efm"
    ];
  };
}
