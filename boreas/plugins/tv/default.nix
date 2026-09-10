{
  config,
  lib,
  ...
}: {
  plugins.tv = {
    enable = true;
  };

  keymaps = let
    tv = channel: "<CMD>Tv ${channel}<CR>";
    mkKeymap = key: action: desc: {
      mode = "n";
      inherit key;
      action = tv action;
      options = {
        inherit desc;
        silent = true;
      };
    };
  in
    lib.mkIf config.plugins.tv.enable [
      (mkKeymap "<leader>sp" "cable" "search all")
      (mkKeymap "<leader>sf" "files" "search files")
      (mkKeymap "<leader>sb" "buffers" "search buffers")
      (mkKeymap "<leader>sg" "text" "search grep")
      (mkKeymap "<leader>sr" "recent_files" "search recent files")
      # (mkKeymap "<leader>sd" "diagnostics" "search diagnostics")
      # (mkKeymap "<leader>ss" "lsp_symbols" "search symbols")
    ];
}
