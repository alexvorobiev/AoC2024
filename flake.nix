{
  description = "Advent of Code 2024 in J";

  inputs = {
    nixpkgs.url = "nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [
            (self: super: {
              j = super.callPackage ./j/package.nix {};
            })
          ];
        };
      in
        with pkgs; {
          devShells = {
            default = mkShell {
              packages = [ j nix-output-monitor ];
            };
          };

          packages = {

          };

          apps = {

          };
        }
    );
}
