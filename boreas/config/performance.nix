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
        "fzf.lua"
        "nvim-treesitter"
        "nvim-treesitter-context"
        "snacks.nvim"
      ];
    };
  };
}
