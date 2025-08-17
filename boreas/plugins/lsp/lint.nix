{pkgs, ...}: {
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
  extraPackages = [
    pkgs.tflint
    pkgs.yamllint
    pkgs.golangci-lint
    pkgs.commitlint
    pkgs.statix
  ];
}
