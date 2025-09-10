{
  pkgs,
  lib,
  ...
}: {
  plugins.conform-nvim = {
    enable = true;
    settings = {
      default_format_ops.lsp_format = "fallback";

      format_on_save = {
        lspFallback = true;
        timeoutMs = 500;
      };
      formatters_by_ft = {
        python = [
          "ruff_organize_import"
          "ruff_format"
          "ruff_fix"
        ];
        "_" = [
          "squeeze_blanks"
          "trim_whitespace"
          "trim_newlines"
        ];
        nix = ["alejandra"];
        go = [
          "gofmt"
          "goimports"
          "golines"
          "golangci-lint"
        ];
        hcl = ["hcl"];
        json = ["jq"];
        markdown = ["mdformat"];
        rust = ["rustfmt"];
        typescript = [
          "prettier"
          "eslint"
        ];
        javascript = ["prettier"];
        scala = ["scalafmt"];
        toml = ["taplo"];
        terraform = ["terraform_fmt"];
        yaml = ["yamlfmt"];
        nu = ["nufmt"];
        "*" = ["codespell"];
      };
    };
  };

  keymaps = [
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>cf";
      action = "<CMD>lua require('conform').format()<CR>";
      options = {
        silent = true;
        desc = "format";
      };
    }
  ];
}
