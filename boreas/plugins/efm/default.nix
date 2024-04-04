{
  plugins = {
    lsp.servers.efm = {
      enable = true;
      extraOptions.init_options = {
        documentFormatting = true;
        documentRangeFormatting = true;
        hover = true;
        documentSymbol = true;
        codeAction = true;
        completion = true;
      };
    };

    lsp-format = {
      enable = true;
      lspServersToEnable = ["efm"];
    };

    efmls-configs = {
      enable = true;
      externallyManagedPackages = [
        "terraform_fmt"
        "black"
        "isort"
        "flake8"
        "prettier"
        "eslint"
      ];
      setup = {
        all = {linter = "vale";};
        bash = {
          formatter = "beautysh";
          linter = "shellcheck";
        };
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
          formatter = ["black" "isort"];
          linter = "flake8";
        };
        rust = {formatter = "rustfmt";};
        scala = {formatter = "scalafmt";};
        sh = {
          formatter = "beautysh";
          linter = "shellcheck";
        };
        sql = {
          formatter = "sql-formatter";
          linter = "sqlfluff";
        };
        typescript = {
          formatter = ["prettier" "eslint"];
          linter = "eslint";
        };
        terraform = {formatter = "terraform_fmt";};
        toml = {formatter = "taplo";};
        yaml = {
          formatter = "yq";
          linter = "yamllint";
        };
        zsh = {formatter = "beautysh";};
      };
    };
  };
}
