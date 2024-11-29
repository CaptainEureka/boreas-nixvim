{
  plugins = {
    copilot-lua = {
      enable = true;
      suggestion.enabled = false;
      panel.enabled = false;
    };
    copilot-cmp.enable = true;

    avante = {
      enable = true;
      settings = {
        provider = "copilot";
        auto_suggestions_provider = "copilot";
      };
    };

    lspkind = {
      cmp = {
        menu.Copilot = "[copilot]";
      };
      symbolMap = {Copilot = "";};
    };

    cmp.settings.sources = [{name = "copilot";}];
  };
}
