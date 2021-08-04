let
  pkgs = (import <nixpkgs> { });
  stdenv = pkgs.stdenv;
  fetchurl = pkgs.fetchurl;
  autoreconfHook = pkgs.autoreconfHook;
in
stdenv.mkDerivation {
  name = "pasmo";
  version = "0.5.4.beta2";

  src = fetchurl {
    url = "https://pasmo.speccy.org/bin/pasmo-0.5.4.beta2.tgz";
    sha256 = "2604921b14a26356264b3eec2ab835b8a467710ae166c9728eb149dfc2011c04";
  };
}
