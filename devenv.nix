{pkgs, ...}: {
  packages = [
    pkgs.nixd
  ];

  # https://devenv.sh/languages/
  languages.nix = {
    enable = true;
    lsp.package = pkgs.nil;
  };

  # https://devenv.sh/pre-commit-hooks/
  pre-commit.hooks = {
    alejandra.enable = true;
    statix.enable = true;
    # deadnix.enable = true;
  };
}
