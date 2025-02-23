{pkgs, ...}: {
  plugins.mini = {
    enable = true;
    mockDevIcons = true;
    modules = {
      # mini.ai
      ai = {};

      # mini.comment
      comment.mappings = {
        comment = "gcc";
        comment_line = "gcc";
        comment_visual = "gc";
        textobject = "gc";
      };

      # mini.icons
      icons.style = "glyph";

      # mini.surround
      surround.mappings = {
        add = "gsa";
        delete = "gsd";
        find = "gsf";
        find_left = "gsF";
        highlight = "gsh";
        replace = "gsr";
        update_n_lines = "gsn";
      };

      # mini.pairs
      pairs = {};

      # mini.splitjoin
      splitjoin = {};
    };
  };
}
