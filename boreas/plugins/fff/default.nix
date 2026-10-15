{
  config,
  lib,
  ...
}: {
  plugins.fff = {
    enable = true;
    settings = {
      prompt = "  ";
      layout = {
        width = 0.8;
        height = 0.85;
      };
    };
  };

  # fff only covers files and grep; the remaining pickers come from snacks.
  keymaps = let
    mkKeymap = key: action: desc: {
      mode = "n";
      inherit key;
      action = lib.nixvim.mkRaw "function() ${action} end";
      options = {
        inherit desc;
        silent = true;
      };
    };
    fff = picker: "require('fff').${picker}()";
    snacks = picker: "Snacks.picker.${picker}()";
  in
    lib.mkIf config.plugins.fff.enable [
      (mkKeymap "<leader>sp" (snacks "smart") "search all")
      (mkKeymap "<leader>sf" (fff "find_files") "search files")
      (mkKeymap "<leader>sb" (snacks "buffers") "search buffers")
      (mkKeymap "<leader>sg" (fff "live_grep") "search grep")
      (mkKeymap "<leader>sr" (snacks "recent") "search recent files")
      (mkKeymap "<leader>sd" (snacks "diagnostics") "search diagnostics")
      (mkKeymap "<leader>ss" (snacks "lsp_symbols") "search symbols")
    ];
}
