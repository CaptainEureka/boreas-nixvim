{
  config,
  lib,
  ...
}: {
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
    copilot-cmp = lib.mkIf config.plugins.cmp.enable {
      enable = true;
    };
    lspkind = lib.mkIf config.plugins.cmp.enable {
      cmp = {
        menu.Copilot = "[copilot]";
      };
      symbolMap = {Copilot = "";};
    };
    cmp.settings.sources = lib.mkIf config.plugins.cmp.enable [{name = "copilot";}];

    # blink-cmp-copilot
    blink-copilot.enable = config.plugins.blink-cmp.enable;
    # blink-cmp-copilot.enable = config.plugins.blink-cmp.enable;
    blink-cmp.settings = lib.mkIf config.plugins.blink-cmp.enable {
      sources.default = ["copilot"];
      sources.providers.copilot = {
        name = "copilot";
        module = "blink-copilot";
        score_offset = 100;
        async = true;
        opts = {
          kind = "Copilot";
          kind_icon = " ";
        };
      };
    };
  };
}
