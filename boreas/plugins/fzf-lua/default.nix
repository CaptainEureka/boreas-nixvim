{
  config,
  lib,
  ...
}: {
  plugins.fzf-lua = {
    enable = true;
    settings = {
      winopts = {
        width = 0.8;
        height = 0.85;
        backdrop = 100;
      };
      files = {
        prompt = "  ";
        git_icons = true;
        cwd_header = true;
        cwd_prompt = false;
      };
    };
  };

  keymaps = let
    fzf-lua = picker: "<CMD>:FzfLua ${picker}<CR>";
    mkKeymap = key: action: desc: {
      mode = "n";
      inherit key;
      action = fzf-lua action;
      options = {
        inherit desc;
        silent = true;
      };
    };
  in
    lib.mkIf config.plugins.fzf-lua.enable [
      (mkKeymap "<leader>sp" "global" "search all")
      (mkKeymap "<leader>sf" "files" "search files")
      (mkKeymap "<leader>sb" "buffers" "search buffers")
      (mkKeymap "<leader>sg" "live_grep" "search grep")
      (mkKeymap "<leader>sr" "oldfiles" "search recent files")
      (mkKeymap "<leader>sd" "lsp_workspace_diagnostice" "search diagnostics")
      (mkKeymap "<leader>ss" "lsp_document_symbols" "search symbols")
    ];
}
