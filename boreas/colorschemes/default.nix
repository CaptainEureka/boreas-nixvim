themeName: let
  validThemes = [
    "catppuccin"
    "gruvbox"
    "oxocarbon"
    "poimandres"
  ];
  themePath =
    if builtins.elem themeName validThemes
    then ././${themeName}.nix
    else throw "Invalid theme name provided: ${themeName}";
in {
  imports = [themePath];
}
