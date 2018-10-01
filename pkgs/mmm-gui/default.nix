{ lib, stdenv, python3Packages, wrapGAppsHook, pandoc, mmm,
  pygobject3, gobjectIntrospection, gtk3, gnome3 }:

python3Packages.buildPythonApplication rec {
  pname                 = "mmm-gui";
  version               = "0.1.1";
  buildInputs           = [ pandoc ];
  preConfigure          = "make README.rst";
  nativeBuildInputs     = [ wrapGAppsHook ];
  propagatedBuildInputs = [
    mmm pygobject3 gobjectIntrospection gtk3 gnome3.vte
  ];
  src = builtins.path {
    name        = "m-gui";
    path        = builtins.fetchGit {
      url = "https://github.com/obfusk/m.git";
      rev = "23ec2754abc9e945e5f01fcc64c13c833faf2e33";
      ref = "23ec275-tag-you-are-it";
    };
    filter      = lib.cleanSourceFilter;
  };
  meta = {
    description = "minimalistic media manager - gui";
    homepage    = "https://github.com/obfusk/m-gui";
    license     = stdenv.lib.licenses.gpl3Plus;
  };
}
