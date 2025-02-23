{
  plugins.noice = {
    enable = true;
    settings = {
      notify.enabled = true;
      messages = {
        enabled = true;
        view = "mini";
      };
      lsp = {
        message.enabled = true;
        progress = {
          enabled = true;
          view = "mini";
        };
        override = {
          "vim.lsp.util.convert_input_to_markdown_lines" = true;
          "vim.lsp.util.stylize_markdown" = true;
          "cmp.entry.get_documentation" = true;
        };
      };
      popupmenu = {
        enabled = true;
        backend = "nui";
      };
      presets = {
        bottom_search = true;
        command_palette = false;
        long_message_to_split = true;
        inc_rename = false;
        lsp_doc_border = true;
      };
    };
  };
}
