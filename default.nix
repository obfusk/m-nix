{ pkgs ? import <nixpkgs> {} }:

with pkgs;

rec {
  mmm     = callPackage ./pkgs/mmm     {};
  mmm-gui = callPackage ./pkgs/mmm-gui {};
}
