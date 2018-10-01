{ lib, stdenv, python3Packages, pandoc }:

python3Packages.buildPythonApplication rec {
  pname         = "mmm";
  version       = "0.4.2";
  buildInputs   = [ pandoc ];
  preConfigure  = "make README.rst";
  src = builtins.path {
    name        = "m";
    path        = ./.;
    filter      = lib.cleanSourceFilter;
  };
  meta = {
    description = "minimalistic media manager";
    homepage    = "https://github.com/obfusk/m";
    license     = stdenv.lib.licenses.gpl3Plus;
  };
}
