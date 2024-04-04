{pkgs, ...}: let
  zellij-nav =
    pkgs.vimUtils.buildVimPlugin
    {
      pname = "zellij-nav";
      version = "0.1.0";
      src = pkgs.fetchFromGitHub {
        owner = "swaits";
        repo = "zellij-nav.nvim";
        rev = "25930804397ef540bd2de62f9897bc2db61f9baa";
        hash = "sha256-TUhA6UGwpZuYWDU4j430LMnHVD8cggwrAzQ+HlT5ox8=";
      };
    };
in {
  extraPlugins = [
    zellij-nav
  ];

  extraConfigLua = ''
    require("zellij-nav").setup()
  '';

  keymaps = [
    {
      key = "<leader><leader>h";
      action = "<cmd>ZellijNavigateLeft<cr>";
      options = {
        silent = true;
        nowait = true;
        desc = "[Zellij] Navigate Left";
      };
    }
    {
      key = "<leader><leader>l";
      action = "<cmd>ZellijNavigateRight<cr>";
      options = {
        desc = "[Zellij] Navigate Right";
        silent = true;
        nowait = true;
      };
    }
    {
      key = "<leader><leader>k";
      action = "<cmd>ZellijNavigateUp<cr>";
      options = {
        silent = true;
        nowait = true;
        desc = "[Zellij] Navigate Up";
      };
    }
    {
      key = "<leader><leader>j";
      action = "<cmd>ZellijNavigateDown<cr>";
      options = {
        silent = true;
        nowait = true;
        desc = "[Zellij] Navigate Down";
      };
    }
  ];
}
