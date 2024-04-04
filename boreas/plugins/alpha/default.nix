{
  plugins.alpha = {
    enable = true;

    layout = [
      {
        type = "padding";
        val = 2;
      }
      {
        type = "text";
        val = [
          "  ███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗  "
          "  ████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║  "
          "  ██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║  "
          "  ██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║  "
          "  ██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║  "
          "  ╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝  "
        ];
        opts = {
          position = "center";
          hl = "Function";
        };
      }
      {
        type = "padding";
        val = 2;
      }
      {
        type = "group";
        val = [
          {
            shortcut = "SPC sf";
            desc = "  Find file";
            command = ":Telescope find_files <CR>";
          }
          {
            shortcut = "SPC sr";
            desc = "  Recently used files";
            command = ":Telescope oldfiles <CR>";
          }
          {
            shortcut = "SPC sg";
            desc = "  Find text";
            command = ":Telescope live_grep <CR>";
          }
          {
            shortcut = "SPC q";
            desc = "  Quit Neovim";
            command = ":qa<CR>";
          }
        ];
        opts = {
          spacing = 1;
          position = "center";
          hl = "Keyword";
        };
      }
      {
        type = "padding";
        val = 2;
      }
      {
        type = "text";
        val = "Don't Stop Until You're Proud...";
        opts = {
          margin = 5;
          position = "center";
          hl = "String";
        };
      }
    ];
  };
}
