# To update version locked dependencies run:
# nix-shell -p bundler -p bundix --run 'bundler update; bundler lock; bundler package --no-install --path vendor; bundix; rm -rf vendor'
# See https://matthewrhone.dev/jekyll-in-nixos for more details

with (import <nixpkgs> {});
let env = bundlerEnv {
    name = "your-package";
    inherit ruby;
    gemfile = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemset = ./gemset.nix;
  };
in stdenv.mkDerivation {
  name = "your-package";
  buildInputs = [env bundler ruby];
}
