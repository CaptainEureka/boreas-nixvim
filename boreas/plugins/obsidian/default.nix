{
  config,
  lib,
  pkgs,
  ...
}: {
  plugins.obsidian = {
    enable = pkgs.stdenv.isDarwin;
    settings = {
      disable_frontmatter = true;
      completion.blink = config.plugins.blink-cmp.enable;
      templates.subdir = "templates";
      picker.name = "telescope.nvim";
      workspaces = [
        {
          name = "Athena";
          path = "~/Documents/athena";
        }
      ];
    };
  };
}
