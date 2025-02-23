{
  lib,
  config,
  ...
}: {
  plugins.notify = {
    enable = true;
    settings = {
      backgroundColour = "#000000";
      fps = 60;
      render = "default";
      stages = "fade_in_slide_out";
      timeout = 1000;
      topDown = true;
    };
  };
  keymaps = lib.mkIf config.plugins.notify.enable [
    {
      mode = "n";
      key = "<leader>un";
      action = ''
        <cmd>luad require("notify").dismiss({silent = true, pending = true })<cr>
      '';
      options.desc = "dismiss all notifications";
    }
  ];
}
