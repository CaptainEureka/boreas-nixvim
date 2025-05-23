{
  plugins = {
    lsp.servers.efm = {
      enable = true;
      extraOptions.init_options = {
        documentFormatting = true;
        documentRangeFormatting = true;
        codeAction = true;
      };
    };

    lsp-format = {
      enable = true;
      lspServersToEnable = ["efm"];
    };

    efmls-configs = {
      enable = true;
      externallyManagedPackages = ["terraform_fmt" "golangci_lint"];
      setup = {
        all.linter = ["vale" "codespell"];
        bash = {
          formatter = "beautysh";
          linter = "shellcheck";
        };
        go = {
          formatter = ["gofmt" "golines"];
          linter = "golangci_lint";
        };
        gitcommit.linter = "gitlint";
        json = {
          formatter = "jq";
          linter = "jq";
        };
        markdown = {
          formatter = "mdformat";
          linter = "markdownlint";
        };
        nix = {
          formatter = "alejandra";
          linter = "statix";
        };
        python.formatter = "ruff";
        rust.formatter = "rustfmt";
        scala.formatter = "scalafmt";
        sh = {
          formatter = "beautysh";
          linter = "shellcheck";
        };
        sql = {
          formatter = "sqlfluff";
          linter = "sqlfluff";
        };
        typescript = {
          formatter = "prettier";
          linter = "eslint";
        };
        terraform.formatter = "terraform_fmt";
        toml.formatter = "taplo";
        yaml = {
          formatter = "yq";
          linter = "yamllint";
        };
        zsh.formatter = "beautysh";
      };
    };
  };
}
