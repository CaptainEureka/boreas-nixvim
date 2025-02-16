{
  plugins = {
    copilot-lua = {
      enable = true;
      settings = {
        suggestion.enabled = false;
        panel.enabled = false;
      };
    };

    codecompanion = {
      enable = true;
      settings.strategies = {
        chat.adapter = "copilot";
        inline.adapter = "copilot";
        agent.adapter = "copilot";
      };
    };

    # nvim-cmp-copilot
    # copilot-cmp.enable = true;
    # lspkind = {
    #   cmp = {
    #     menu.Copilot = "[copilot]";
    #   };
    #   symbolMap = {Copilot = "";};
    # };
    # cmp.settings.sources = [{name = "copilot";}];

    # blink-cmp-copilot
    blink-cmp-copilot.enable = true;
    blink-cmp.settings = {
      sources.default = ["copilot"];
      sources.providers.copilot = {
        module = "blink-cmp-copilot";
        name = "copilot";
        score_offset = 100;
      };
    };
  };
}
