{
  plugins.lint = {
    enable = true;
    lintersByFt = {
      terraform = ["tflint"];
      yaml = ["yamllint"];
      go = ["golanci_lint"];
      gitcommit = ["commitlint"];
      markdown = ["markdownlint"];
      nix = ["statix"];
    };
  };
}
