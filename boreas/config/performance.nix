{
  # Performance configurations
  performance = {
    byteCompileLua = {
      enable = false;
      nvimRuntime = false;
      configs = false;
      plugins = false;
    };
    # EXPERIMENTAL: This feature is not yet stable and may cause issues.
    # combinePlugins = {
    #   enable = false;
    #   standalonePlugins = [
    #     "catppuccin-nvim"
    #     "poimandres.nvim"
    #     "codecompanion.nvim"
    #     "blink.cmp"
    #     "nvim-lspconfig"
    #     "nvim-treesitter-context"
    #     "hmts.nvim"
    #     "nvim-treesitter"
    #     "vim-fugitive"
    #   ];
    # };
  };
}
