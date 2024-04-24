{
  plugins.telescope = {
    enable = true;
    extensions = {
      ui-select = {
        enable = true;
        # disable codeactions
        settings.specific_opts.codeactions = false;
      };
    };
  };
}
