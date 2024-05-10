# Contains the build-dependencies for libtransmission and transmission-cli
# This gives NixOS-users a 0-setup development environment by running the command:
# $ nix-shell

{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell rec {
  buildInputs = with pkgs; [
    cmake
    clang-tools
    gcc
    curl
    libdeflate
    libevent
    libnatpmp
    miniupnpc
    dht
    libpsl
    libutp_3_4
    libb64
    systemdLibs
    nodejs_21
    nodePackages.npm
    esbuild
    rsass
    perl
  ];
}
