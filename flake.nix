{
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
        nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };

  outputs            = { self, flake-utils, nixpkgs, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in {
        packages.default = pkgs.stdenv.mkDerivation {
          name       = "gui";
          src        = self;

          buildPhase = ''
          mkdir -p $out
          cp -r $src/*.qml $out
          '';
        };
      });
}
