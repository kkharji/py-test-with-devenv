{ pkgs, ... }:

{
  # https://devenv.sh/basics/
  env = { HELLO = "WORLD"; };

  # https://devenv.sh/packages/
  packages = with pkgs; [ python310Packages.pytest_6 watchexec ];

  enterShell = "";

  # https://devenv.sh/languages/
  languages.python.enable = true;

  # https://devenv.sh/pre-commit-hooks/
  pre-commit.hooks = {
    # Check shell scripts
    shellcheck.enable = false;
    # Format Python code
    black.enable = true;
  };

  # https://devenv.sh/scripts/
  scripts.test.exec = ''
    watchexec -r -w src -i=src/__pycache__/* -c -- pytest
  '';
  scripts.run.exec = ''
    watchexec -r -w src -i=src/__pycache__/* -i=src/test_* -- python src/solution.py
  '';

  devcontainer.enable = true;
}
