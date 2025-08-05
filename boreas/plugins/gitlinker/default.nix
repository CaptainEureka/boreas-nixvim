{
  config,
  lib,
  ...
}: {
  plugins.gitlinker = {
    enable = true;
    callbacks = {
      "github.com" = "get_github_type_url";
      "gitlab.personio-internal.de" = "get_gitlab_type_url";
    };
  };

  keymaps = lib.mkIf config.plugins.gitlinker.enable [
    {
      mode = ["n" "v"];
      key = "<leader>gy";
      action = "<CMD>:GitLink<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Yank Git link";
      };
    }
  ];
}
