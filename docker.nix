with import <nixpkgs> {};

let
  hello = import ./default.nix {};
in {
  helloImage = dockerTools.buildImage {
    name = "hello";
    contents = [
      hello
    ];
    config = {
      EntryPoint = ["hello.py"];
      ExposedPorts = {
        "5000/tcp" = {};
      };
    };
  };
}
