{pkgs, ...}: {
  extraConfigLua = ''
    require("hop").setup({})
  '';

  extraPlugins = [
    pkgs.vimPlugins.hop-nvim
  ];
}
