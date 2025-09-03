{pkgs, ...}: {
  plugins.lint = {
    enable = true;
    lintersByFt = {
      yaml = ["yamllint"];
      go = ["golangcilint"];
      gitcommit = ["commitlint"];
      markdown = ["markdownlint"];
      nix = ["statix"];
    };
  };
  extraPackages = [
    pkgs.yamllint
    pkgs.golangci-lint
    pkgs.commitlint
    pkgs.statix
  ];
}
