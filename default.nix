{ pkgs ? import <nixpkgs> {} }:

with pkgs; with python3Packages;

rec {
  mmm     = callPackage ./pkgs/mmm     {};
  mmm-gui = callPackage ./pkgs/mmm-gui { inherit mmm; };
}
