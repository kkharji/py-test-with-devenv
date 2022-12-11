# Getting started

1. Install devenv `nix-env -if https://github.com/cachix/devenv/tarball/v0.4`
2. Allow direnv `direnv allow` (must install direnv)
3. wait .... :p
4. Open two terminal/tabs
    - first tab: run `test`
    - second tab: run `run`
5. iterate and edit `src/solution.py`

# How it works

- `test` shell command runs the tests and watches for changes in the source code
- `run` shell command runs the `__main__` block in `src/solution.py`
