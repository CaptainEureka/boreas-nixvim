{pkgs, ...}: {
  plugins.telescope = {
    enable = true;
    enabledExtensions = [
      "gh"
      "ui-select"
    ];
    extensionConfig = {
      ui-select = {
        __raw = ''
          require("telescope.themes").get_dropdown {
            -- other opts
            layout = "vertical",
            winblend = 10
          }'';
      };
    };
  };
  extraPlugins = with pkgs.vimPlugins; [
    telescope-github-nvim
    telescope-ui-select-nvim
  ];
}
