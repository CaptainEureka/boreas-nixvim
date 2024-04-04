{
  simple = {
    componentSeparators = {
      right = "";
      left = "";
    };
    sectionSeparators = {
      left = "";
      right = "";
    };
    sections = {
      lualine_a = [
        {
          name = "mode";
          icon = "";
          padding = {
            right = 0;
            left = 1;
          };
        }
      ];
      lualine_b = [
        {
          name = "branch";
          icon = "";
        }
        {name = "diff";}
      ];
      lualine_c = [
        {name = "filename";}
        {
          name = "diagnostics";
          extraConfig = {
            sources = [
              "nvim_lsp"
            ];
          };
        }
        {
          name = "Gitsigns blame_line";
        }
      ];
      lualine_x = [
        {name = "filetype";}
        {name = "overseer";}
      ];
      lualine_y = [
        {name = "progress";}
      ];
      lualine_z = [
        {
          name = "location";
          padding = {
            right = 1;
            left = 0;
          };
        }
      ];
    };
    inactiveSections = {
      lualine_a = [{name = "filename";}];
      lualine_b = [{name = "";}];
      lualine_c = [{name = "";}];
      lualine_x = [{name = "";}];
      lualine_y = [{name = "";}];
      lualine_z = [{name = "location";}];
    };
  };
}
