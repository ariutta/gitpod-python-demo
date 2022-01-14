with import <nixpkgs> {};
let
  pythonEnv = python38.withPackages (ps: [
    ps.numpy
    ps.toolz
  ]);
in mkShell {
  packages = [
    pythonEnv

    black
    mypy

    libffi
    openssl
  ];
}
