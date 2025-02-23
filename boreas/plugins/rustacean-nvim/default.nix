{
  plugins.rustaceanvim = {
    enable = true;
    settings = {
      server.default_settings.files.excludeDirs = [
        ".devenv"
        ".direnv"
      ];

      completion = {autocomplete = true;};
    };
  };
}
