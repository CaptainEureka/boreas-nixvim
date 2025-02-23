{
  lib,
  config,
  ...
}: {
  plugins.which-key = {
    enable = true;
    settings.key-labels = {
      "<space>" = "SPC";
      "<leader>" = "SPC";
      "<cr>" = "RET";
      "<tab>" = "TAB";
    };
  };

  keymaps = lib.mkIf config.plugins.which-key.enable [
    {
      key = "<leader>?";
      action = "<CMD>:WhichKey <leader><CR>";
      options = {
        desc = "help";
        silent = true;
        nowait = true;
      };
    }
  ];
}
