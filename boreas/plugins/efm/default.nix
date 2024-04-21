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
      externallyManagedPackages = ["terraform_fmt"];
      setup = {
        all.linter = ["vale" "codespell"];
        bash = {
          formatter = "beautysh";
          linter = "shellcheck";
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
        python = {
          formatter = "ruff";
          linter = "ruff";
        };
        rust.formatter = "rustfmt";
        scala.formatter = "scalafmt";
        sh = {
          formatter = "beautysh";
          linter = "shellcheck";
        };
        sql = {
          formatter = "sql-formatter";
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
