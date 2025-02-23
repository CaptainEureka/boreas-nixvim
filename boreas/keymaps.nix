{lib, ...}: let
  options = {
    silent = true;
    nowait = true;
  };
  addOptions = attrset: lib.recursiveUpdate attrset {inherit options;};
in {
  keymaps = map addOptions [
    {
      key = "<leader>w";
      action = "<CMD>:w<CR>";
      options.desc = "write";
    }

    {
      key = "<leader>qq";
      action = "<CMD>quitall<CR><ESC>";
      options.desc = "quit all";
    }

    {
      key = "<leader>q";
      action = "<CMD>:q<CR>";
      options.desc = "quit";
    }

    {
      key = "<leader>bc";
      action = "<CMD>:bd<CR>";
      options.desc = "close buffer";
    }

    {
      mode = "n";
      key = "<leader>wc";
      action = "<C-w>c";
      options.desc = "close window";
    }

    {
      mode = "n";
      key = "<leader>w-";
      action = "<C-W>s";
      options.desc = "split window below";
    }

    {
      mode = "n";
      key = "<leader>w|";
      action = "<C-W>v";
      options.desc = "split window right";
    }
  ];
}
