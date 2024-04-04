{
  plugins = {
    treesitter = {
      enable = true;
      indent = true;
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
      multilineThreshold = 1;
    };

    treesitter-textobjects.enable = true;
  };
}
