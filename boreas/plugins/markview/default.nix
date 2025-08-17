{
  plugins.markview = {
    enable = true;
    lazyLoad.enable = true;
    lazyLoad.settings.ft = ["markdown" "codecompanion"];
    settings = {
      preview = {
        filetypes = ["markdown" "codecompanion"];
        ignore_buftypes = {};
      };
    };
  };
}
