{ wine, stdenv, fetchurl }:

let
  pname = "overwatch";
in
stdenv.mkDerivation rec {
  name = "${pname}-${version}";
  version = "2019.07";

  src = fetchurl {
    url = "http://dist.blizzard.com/downloads/bna-installers/322d5bb9ae0318de3d4cde7641c96425/retail.1/Battle.net-Setup-enUS.exe";
    sha256 = "1gf19carsw3cf6vfzq3f13s7djaw2qgpdcj3jah1ik6zsl62q835";
  };

  installPhase = ''
    mkdir -p $out/{bin,opt/${pname}}
    mv * $out/opt/${pname}
  '';
}
