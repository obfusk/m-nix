{ lib, stdenv, python3Packages, wrapGAppsHook, pandoc, mmm,
  pygobject3, gobjectIntrospection, gtk3, gnome3 }:

python3Packages.buildPythonApplication rec {
  pname                 = "mmm-gui";
  version               = "0.1.1";
  preConfigure          = "make README.rst";
  nativeBuildInputs     = [ pandoc wrapGAppsHook ];
  propagatedBuildInputs = [
    mmm pygobject3 gobjectIntrospection gtk3 gnome3.vte
  ];
  src = builtins.fetchGit {
    url = "https://github.com/obfusk/m-gui.git";
    rev = "6883401b56fcf116a42be3df28220cabccb47e8d";
    ref = "6883401-tag-you-are-it";
  };
  meta = {
    description = "minimalistic media manager - gui";
    homepage    = "https://github.com/obfusk/m-gui";
    license     = stdenv.lib.licenses.gpl3Plus;
  };
}
