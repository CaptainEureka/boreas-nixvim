{lib, ...}: let
  helpers = lib.nixvim;
in {
  plugins.neotest = {
    enable = true;
    adapters = {
      go.enable = true;
      jest.enable = true;
      python.enable = true;
      rust.enable = true;
      scala.enable = true;
    };
  };
  keymaps = [
    {
      key = "<leader>ntr";
      action = helpers.mkRaw ''
        function()
          require("neotest").run.run()
        end
      '';
      options.desc = "neotest run";
    }
    {
      key = "<leader>ntf";
      action = helpers.mkRaw ''
        function()
          require("neotest").run.run(vim.fn.expand("%"))
        end
      '';
      options.desc = "neotest run file";
    }
    {
      key = "<leader>ntw";
      action = helpers.mkRaw ''
        function()
          require("neotest").watch.toggle(vim.fn.expand("%"))
        end
      '';
      options.desc = "neotest watch";
    }
    {
      key = "<leader>nts";
      action = helpers.mkRaw ''
        function()
          require("neotest").summary.toggle()
        end
      '';
      options.desc = "neotest summary";
    }
    {
      key = "<leader>nto";
      action = helpers.mkRaw ''
        function ()
          require("neotest").output_panel.toggle()
        end
      '';
      options.desc = "neotest output";
    }
  ];
}
