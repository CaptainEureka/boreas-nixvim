{
  plugins.gitlinker = {
    enable = true;
    callbacks = {
      "github.com" = "get_github_type_url";
      "gitlab.personio-internal.de" = "get_gitlab_type_url";
    };
    mappings = "<leader>gy";
  };
}
