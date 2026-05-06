{
  # Performance configurations
  performance = {
    byteCompileLua = {
      enable = true;
    };
    combinePlugins = {
      enable = true;
      standalonePlugins = [
        "blink.cmp"
        "catppuccin-nvim"
        "conform.nvim"
        "nvim-treesitter"
        "nvim-treesitter-context"
        "snacks.nvim"
      ];
    };
  };
}
