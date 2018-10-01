{ nixpkgs ? import <nixpkgs> {} }:
with nixpkgs;
let
  callPkg = lib.callPackageWith (nixpkgs // python3Packages // pkgs);
  pkgs = rec {
    mmm     = callPkg ./pkgs/mmm     {};
    mmm-gui = callPkg ./pkgs/mmm-gui {};
  };
in pkgs
