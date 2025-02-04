{
  plugins = {
    copilot-lua = {
      enable = true;
      settings = {
        suggestion.enabled = false;
        panel.enabled = false;
      };
    };
    copilot-cmp.enable = true;

    # avante = {
    #   enable = true;
    #   settings = {
    #     provider = "copilot";
    #     auto_suggestions_provider = "copilot";
    #   };
    # };

    codecompanion = {
      enable = true;
      settings.strategies = {
        chat.adapter = "copilot";
        inline.adapter = "copilot";
        agent.adapter = "copilot";
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
