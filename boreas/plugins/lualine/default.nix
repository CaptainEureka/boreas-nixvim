{
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        theme = {
          normal = {
            a = {
              bg = "#b4befe";
              fg = "#313244";
            };
            b = {
              bg = "#313244";
              fg = "#b4befe";
            };
            c = {
              bg = "#181825";
              fg = "#b4befe";
            };
          };
          command = {
            a = {
              bg = "#fab387";
              fg = "#313244";
            };
            b = {
              bg = "#313244";
              fg = "#fab387";
            };
          };
          insert = {
            a = {
              bg = "#a6e3a1";
              fg = "#313244";
            };
            b = {
              bg = "#313244";
              fg = "#a6e3a1";
            };
          };
          visual = {
            a = {
              bg = "#f2cdcd";
              fg = "#313244";
            };
            b = {
              bg = "#313244";
              fg = "#f2cdcd";
            };
          };
          terminal = {
            a = {
              bg = "#94e2d5";
              fg = "#313244";
            };
            b = {
              bg = "#313244";
              fg = "#94e2d5";
            };
          };
          replace = {
            a = {
              bg = "#f38ba8";
              fg = "#313244";
            };
            b = {
              bg = "#313244";
              fg = "#f38ba8";
            };
          };
        };
        globalstatus = true;
        component_separators = {
          right = "";
          left = "";
        };
        section_separators = {
          left = "";
          right = "";
        };
      };
      extensions = [
        "oil"
        "trouble"
        "quickfix"
      ];
      sections = {
        lualine_a = [
          {
            __unkeyed = "mode";
            icon = "";
          }
        ];
        lualine_b = [
          {
            __unkeyed = "branch";
            icon = "";
          }
          "diff"
        ];
        lualine_c = [
          {
            __unkeyed = "diagnostics";
            symbols = {
              error = "";
              warn = "";
              info = "";
              hint = "";
            };
          }
        ];
        lualine_x = [
          # Show active language server
          {
            __unkeyed.__raw = ''
              function()
                  local msg = ""
                  local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
                  local clients = vim.lsp.get_active_clients()
                  if next(clients) == nil then
                      return msg
                  end
                  for _, client in ipairs(clients) do
                      local filetypes = client.config.filetypes
                      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                          return client.name
                      end
                  end
                  return msg
              end
            '';
            icon = "";
            color.fg = "#80859d";
          }
        ];
        lualine_y = [
          {
            __unkeyed = "filetype";
            colored = false;
            icon_only = true;
            separator = "";
            padding = 0;
            color.bg = "#eba0ac";
            color.fg = "#1e1e2e";
          }
          {
            __unkeyed = "filename";
            color.bg = "#eba0ac";
            padding = {
              left = 0;
              right = 1;
            };
            color.fg = "#1e1e2e";
          }
        ];
        lualine_z = [
          {
            __unkeyed.__raw = ''
              function ()
                  local cwd = vim.fn.getcwd()
                  return vim.fn.fnamemodify(cwd, ":t")
              end
            '';
            icon = "󰉖";
            padding = {
              left = 0;
              right = 1;
            };
            color.bg = "#f2cdcd";
            color.fg = "#1e1e2e";
          }
        ];
      };
    };
  };
}
