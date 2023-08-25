{ stdenv
, qtbase
, full
, cmake
, wrapQtAppsHook
}:
stdenv.mkDerivation {
  pname = "qt-rpi-nix-test";
  version = "1.0";

  src = ./untitled;

  buildInputs = [
    qtbase
    full
  ];

  nativeBuildInputs = [
    cmake
    wrapQtAppsHook
  ];

  installPhase = ''
    ls -lsa
    mkdir -p $out/bin
    cp qt-rpi-nix-test $out/bin/
  '';
}
