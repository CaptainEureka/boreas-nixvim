{
  plugins = {
    treesitter = {
      enable = true;
      settings.indent.enable = true;
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

    treesitter-textobjects.enable = true;
  };
}
