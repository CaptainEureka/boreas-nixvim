{
  lib,
  pkgs,
  helpers,
  ...
}: {
  plugins = {
    lsp-format.enable = true;
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
          "<leader>ff" = "format";
          "gd" = "definition";
          "gr" = "references";
          "gD" = "declaration";
          "gI" = "implementation";
          "gT" = "type_definition";
          "<leader>rn" = "rename";
          "<leader>ca" = "code_action";
          "K" = "hover";
        };
      };

      servers = {
        docker_compose_language_service.enable = true;
        dockerls.enable = true;
        fish_lsp.enable = true;
        gopls.enable = true;
        gleam.enable = true;
        harper_ls.enable = true;
        html.enable = true;
        htmx.enable = true;
        jsonls.enable = true;
        marksman.enable = true;
        nil_ls.enable = true;
        nixd = {
          enable = true;
          settings = {
            formatting.command = ["${lib.getExe pkgs.alejandra}"];
            options = {
              nixvim.expr = ''(builtins.getFlake "github:nix-community/nixvim").packages.${pkgs.system}.default.options'';
            };
          };
        };
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
        tailwindcss.enable = true;
        terraformls.enable = true;
        yamlls.enable = true;
      };
    };
  };
}
