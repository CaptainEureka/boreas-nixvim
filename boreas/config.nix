{
  # Performance configurations
  performance = {
    byteCompileLua = {
      enable = true;
      nvimRuntime = true;
      configs = true;
      plugins = true;
    };
  };

  # <SPACE> as leader-key
  globals.mapleader = " ";

  # Use system clipboard
  clipboard.register = "unnamedplus";

  # Automatically alias
  viAlias = true;
  vimAlias = true;

  diagnostic.settings = {
    update_in_insert = true;
    severity_sort = true;
    float.border = "rounded";
    jump = {
      severity.__raw = "vim.diagnostic.severity.WARN";
    };
  };
  opts = {
    # Enable relative line numbers
    number = true;
    relativenumber = true;

    # Set tabs to 2 spaces
    tabstop = 2;
    softtabstop = 2;
    showtabline = 0;
    expandtab = true;

    # Enable auto indent
    smartindent = true;
    shiftwidth = 2;
    breakindent = true;

    # Enable incremental search
    hlsearch = true;
    incsearch = true;

    # Enable text wrap
    wrap = true;

    # Better splitting
    splitbelow = true;
    splitright = true;

    # Enable mouse mode
    mouse = "a"; # mouse

    # Enable ignorecase + smartcase for better search
    ignorecase = true;
    smartcase = true; # Don't ignore case with capitals
    grepprg = "rg --vimgrep";
    grepformat = "%f:%l:%c:%m";

    # Decrease updatetime
    updatetime = 50; # for faster completion

    # Set completopt to have better completions
    completeopt = [
      "menuone"
      "noselect"
      "noinsert"
    ];

    # Enable persistent undo history
    swapfile = false;
    autoread = true;
    backup = false;
    undofile = true;

    # Enable 24-bit colors
    termguicolors = true;

    # Enable the sign column: prevents the screen from jumping
    signcolumn = "yes";

    # Enable cursor line highlight
    cursorline = true;

    # Reduce which-key timeut to 10ms
    timeoutlen = 10;

    # Set encoding type
    encoding = "utf-8";
    fileencoding = "utf-8";

    # More space in neovim command line
    cmdheight = 0;
  };
}
