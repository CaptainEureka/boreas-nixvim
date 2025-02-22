{
  config,
  lib,
  ...
}: {
  plugins.gitsigns = {
    enable = true;
    settings = {
      trouble = true;
      current_line_blame = true;
      current_line_blame_formatter = "    <author>, <committer_time:%R> • <summary>";
    };
  };

  keymaps = lib.mkIf config.plugins.gitsigns.enable [
    {
      mode = ["n" "v"];
      key = "<leader>gh";
      action = "gitsigns";
      options = {
        silent = true;
        desc = "+hunks";
      };
    }
    {
      mode = "n";
      key = "<leader>ghb";
      action = ":Gitsigns blame_line<CR>";
      options = {
        silent = true;
        desc = "blame line";
      };
    }
    {
      mode = "n";
      key = "<leader>ghR";
      action = ":Gitsigns reset_buffer<CR>";
      options = {
        silent = true;
        desc = "reset buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>ghS";
      action = ":Gitsigns stage_buffer<CR>";
      options = {
        silent = true;
        desc = "stage buffer";
      };
    }
  ];
}
