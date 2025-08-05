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
      key = "<leader>ghS";
      action = "<CMD>:Gitsigns stage_hunk<CR>";
      options = {
        silent = true;
        desc = "stage hunk";
      };
    }
    {
      mode = ["n" "v"];
      key = "<leader>ghR";
      action = "<CMD>:Gitsigns reset_hunk<CR>";
      options = {
        silent = true;
        desc = "reset hunk";
      };
    }
    {
      mode = "n";
      key = "<leader>gb";
      action = "<CMD>:Gitsigns blame_line<CR>";
      options = {
        silent = true;
        desc = "blame line";
      };
    }
    {
      mode = "n";
      key = "<leader>gbR";
      action = "<CMD>:Gitsigns reset_buffer<CR>";
      options = {
        silent = true;
        desc = "reset buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>gbS";
      action = "<CMD>:Gitsigns stage_buffer<CR>";
      options = {
        silent = true;
        desc = "stage buffer";
      };
    }
  ];
}
