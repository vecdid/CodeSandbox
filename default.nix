# Heads-up!
#
# There's probably a better way to install Elixir in a way that is accessible
# to the VS Code Extension Host (a non-login shell). If you are familiar with
# Nix, please open a PR!
#
with import <nixpkgs> {}; {
   installElixir = stdenv.mkDerivation {
     name = "installElixir";
     shellHook = ''
     nix \
        --extra-experimental-features nix-command \
        --extra-experimental-features flakes \
        profile install 'nixpkgs#beam.packages.erlangR25.elixir_1_14'
     '';
   };
}
