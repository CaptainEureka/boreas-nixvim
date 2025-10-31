{
  plugins.rustaceanvim = {
    enable = true;
    settings = {
      server.default_settings.rust-analyzer = {
        files.excludeDirs = [
          ".direnv"
          ".devenv"
          ".node_modules"
          ".venv"
          "result"
        ];
      };
      completion = {autocomplete = true;};
    };
  };
}
