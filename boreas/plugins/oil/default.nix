{
  config,
  lib,
  ...
}: {
  plugins.oil = {
    enable = true;
    settings.use_default_keymaps = true;
  };

  keymaps = lib.mkIf config.plugins.oil.enable [
    {
      key = "<leader>e";
      action = "<CMD>:Oil<CR>";
      options.desc = "explore";
    }
  ];
}
