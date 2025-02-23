{
  lib,
  config,
  ...
}: {
  plugins.trouble.enable = true;
  keymaps = lib.optionals config.plugins.trouble.enable [
    {
      key = "<leader>xx";
      action = "<CMD>:Trouble diagnostics toggle<CR>";
      options.desc = "Trouble";
    }
    {
      key = "<leader>xq";
      action = "<CMD>:Trouble qflist toggle<CR>";
      options.desc = "Trouble [Q]uickfix";
    }
    {
      key = "<leader>xl";
      action = "<CMD>:Trouble loclist toggle<CR>";
      options.desc = "Trouble [L]oclist";
    }
    {
      key = "<leader>xR";
      action = "<CMD>:Trouble lsp_references toggle<CR>";
      options.desc = "Trouble LSP [R]eferences";
    }
  ];
}
