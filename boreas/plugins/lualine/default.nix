let
  inherit (import ./themes.nix) simple;
in {
  plugins.lualine = {
    enable = true;
    inherit (simple) componentSeparators;
    inherit (simple) sectionSeparators;
    inherit (simple) sections;
    inherit (simple) inactiveSections;
    globalstatus = true;
    extensions = [
      "trouble"
    ];
  };
}
