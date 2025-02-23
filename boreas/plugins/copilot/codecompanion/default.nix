{
  lib,
  config,
  ...
}: {
  plugins.codecompanion = {
    enable = true;
    settings.strategies = {
      chat.adapter = "copilot";
      inline.adapter = "copilot";
      agent.adapter = "copilot";
    };
  };

  keymaps = lib.mkIf config.plugins.codecompanion.enable [
    {
      mode = ["n" "v"];
      key = "<C-a>";
      action = "<CMD>CodeCompanionActions<CR>";
      options = {
        desc = "codecompanion actions";
        noremap = true;
        silent = true;
      };
    }
    {
      mode = ["n" "v"];
      key = "<leader><leader>a";
      action = "<CMD>CodeCompanionChat<CR>";
      options = {
        desc = "toggle codecompanion chat";
        noremap = true;
        silent = true;
      };
    }
    {
      mode = "v";
      key = "ga";
      action = "<CMD>CodeCompanionChat Add<CR>";
      options = {
        desc = "add selection to codecompanion chat";
        noremap = true;
        silent = true;
      };
    }
  ];
}
