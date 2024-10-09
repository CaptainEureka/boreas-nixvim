{
  plugins = {
    treesitter = {
      enable = true;
      folding = true;
      settings = {
        indent.enable = true;
        highlight.enable = true;
      };
      nixvimInjections = true;
    };

    treesitter-refactor = {
      enable = true;
      highlightDefinitions = {
        enable = true;
        clearOnCursorMove = true;
      };
      smartRename.enable = true;
      navigation.enable = true;
    };

    treesitter-context = {
      enable = true;
      settings.multiline_threshold = 1;
    };

    treesitter-textobjects = {
      enable = true;
      lspInterop.enable = true;
      move.enable = true;
      swap.enable = true;
      select.enable = true;
    };
  };
}
