{
  pkgs,
  lib,
  ...
}: let
  helpers = lib.nixvim;
in {
  imports = [
    ./fastaction.nix
    ./lint.nix
    ./conform.nix
  ];

  plugins = {
    tiny-inline-diagnostic = {
      enable = true;
      settings = {
        preset = "modern";
        options = {
          show_source.if_many = true;
          multilines.enabled = true;
        };
      };
    };
    lsp = {
      enable = true;
      inlayHints = true;
      keymaps = {
        silent = true;
        diagnostic = {
          "<leader>j" = "goto_next";
          "<leader>k" = "goto_prev";
        };
        lspBuf = {
          "gd" = "definition";
          "gr" = "references";
          "gD" = "declaration";
          "gI" = "implementation";
          "gT" = "type_definition";
          "<leader>cn" = "rename";
          "K" = "hover";
        };
      };

      servers = {
        docker_compose_language_service.enable = true;
        dockerls.enable = true;
        fish_lsp.enable = true;
        gopls.enable = true;
        gleam.enable = true;
        harper_ls = {
          enable = true;
          filetypes = [
            "gitcommit"
            "git-commit"
            "markdown"
            "typst"
            "latex"
          ];
        };
        jsonls.enable = true;
        just.enable = true;
        marksman.enable = true;
        nickel_ls.enable = true;
        nixd = {
          enable = true;
          settings = {
            # See <https://sbulav.github.io/vim/neovim-setting-up-nixd/>
            nixpkgs.expr = "import (builtins.getFlake(toString ./.)).inputs.nixpkgs { }";
          };
        };
        nushell.enable = true;
        lua_ls.enable = true;
        ruff = {
          enable = true;
          extraOptions = {
            on_attach = helpers.mkRaw ''
              function(client, bufnr)
                  if client.name == 'ruff' then
                    -- Disable hover in favor of Pyright
                    client.server_capabilities.hoverProvider = false
                  end
                end
            '';
          };
        };
        pyright = {
          enable = true;
          extraOptions = {
            settings = {
              pyright.disableOrganizeImports = true;
              python.analysis.ignore = helpers.mkRaw ''{ "*" }'';
            };
          };
        };
        taplo.enable = true;
        terraformls.enable = true;
        yamlls.enable = true;
      };
    };
  };
}
