{ }:

let
  pkgs = import <nixpkgs> {};
  python = import ./requirements.nix { inherit pkgs; };
in python.mkDerivation {
  name = "hello-1.0.0";
  src = ./.;
  buildInputs = [
    python.packages."Flask"
  ];
  propagatedBuildInputs = [
    python.packages."Flask"
  ];
}
