{
  description = "Advent of Code 2024 in J";

  inputs = {
    nixpkgs.url = "nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
        with pkgs; {
          devShells = {
            default = mkShell {
              packages = [ j ];
            };
          };

          packages = rec {

          };

          apps = rec {

          };
        }
    );
}
