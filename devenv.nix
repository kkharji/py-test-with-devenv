{ pkgs, ... }:

{
  # https://devenv.sh/basics/
  env = { HELLO = "WORLD"; };

  # https://devenv.sh/packages/
  packages = with pkgs; [ python310Packages.pytest_6 ];

  enterShell = "";

  # https://devenv.sh/languages/
  languages.python.enable = true;

  # https://devenv.sh/scripts/
  scripts.watch.exec = "";

  # https://devenv.sh/pre-commit-hooks/
  pre-commit.hooks = {
    # Check shell scripts
    shellcheck.enable = false;
    # Format Python code
    black.enable = true;
  };

  # https://devenv.sh/processes/
  # processes.ping.exec = "ping example.com";
  devcontainer.enable = true;
}
