{ lib, stdenv, python3Packages, pandoc }:

python3Packages.buildPythonApplication rec {
  pname         = "mmm";
  version       = "0.4.2";
  buildInputs   = [ pandoc ];
  preConfigure  = "make README.rst";
  src = builtins.fetchGit {
    url = "https://github.com/obfusk/m.git";
    rev = "23ec2754abc9e945e5f01fcc64c13c833faf2e33";
    ref = "23ec275-tag-you-are-it";
  };
  meta = {
    description = "minimalistic media manager";
    homepage    = "https://github.com/obfusk/m";
    license     = stdenv.lib.licenses.gpl3Plus;
  };
}
