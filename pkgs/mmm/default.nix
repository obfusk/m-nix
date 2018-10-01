{ lib, stdenv, python3Packages, pandoc }:

python3Packages.buildPythonApplication rec {
  pname         = "mmm";
  version       = "0.4.2";
  buildInputs   = [ pandoc ];
  preConfigure  = "make README.rst";
  src = builtins.path {
    name        = "m";
    path        = builtins.fetchGit {
      url = "https://github.com/obfusk/m-gui.git";
      rev = "6883401b56fcf116a42be3df28220cabccb47e8d";
      ref = "6883401-tag-you-are-it";
    };
    filter      = lib.cleanSourceFilter;
  };
  meta = {
    description = "minimalistic media manager";
    homepage    = "https://github.com/obfusk/m";
    license     = stdenv.lib.licenses.gpl3Plus;
  };
}
