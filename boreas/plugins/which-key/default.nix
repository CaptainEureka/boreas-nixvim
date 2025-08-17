{
  lib,
  config,
  ...
}: {
  plugins.which-key = {
    enable = true;
    settings.preset = "helix";
    settings.spec = [
      {
        __unkeyed-1 = "<leader>s";
        mode = ["n" "v"];
        group = "Search";
      }
      {
        __unkeyed-1 = "<leader>c";
        mode = ["n" "v"];
        group = "Code";
      }
      {
        __unkeyed-1 = "<leader>g";
        mode = ["n" "v"];
        group = "Git";
      }
      {
        __unkeyed-1 = "<leader>b";
        mode = ["n" "v"];
        group = "Buffers";
      }
      {
        __unkeyed-1 = "<leader>u";
        mode = ["n" "v"];
        group = "UI";
      }
      {
        __unkeyed-1 = "<leader>q";
        mode = "n";
        group = "Quit";
      }
      {
        __unkeyed-1 = "<leader>w";
        mode = "n";
        group = "Write";
      }
      {
        __unkeyed-1 = "<leader>x";
        mode = ["n" "v"];
        icon = {
          icon = "󱖫 ";
          color = "green";
        };
        group = "Diagnostics";
      }
      {
        __unkeyed-1 = "<leader>?";
        mode = "n";
        group = "Help";
      }
      {
        __unkeyed-1 = "gs";
        mode = ["n" "v"];
        group = "Surround";
      }
      {
        __unkeyed-1 = "z";
        mode = ["n" "v"];
        group = "Fold";
      }
      {
        __unkeyed-1 = "g";
        mode = ["n" "v"];
        group = "Goto";
      }
      {
        __unkeyed-1 = "[";
        mode = ["n" "v"];
        group = "Next";
      }
      {
        __unkeyed-1 = "]";
        mode = ["n" "v"];
        group = "Prev";
      }
      {
        __unkeyed-1 = "[";
        mode = ["n" "v"];
        group = "Next";
      }
    ];
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
