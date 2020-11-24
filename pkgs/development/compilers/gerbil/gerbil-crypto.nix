{ pkgs, lib, fetchFromGitHub, gerbilPackages, ... }:
{
  pname = "gerbil-crypto";
  version = "unstable-2020-12-12";
  git-version = "0.0-10-g5e0d2e0";
  gerbil-package = "clan/crypto";
  gerbilInputs = with gerbilPackages; [gerbil-utils];
  buildInputs = [pkgs.secp256k1 pkgs.pkg-config];
  version-path = "version";
  softwareName = "Gerbil-crypto";
  pre-src = {
    fun = fetchFromGitHub;
    owner = "fare";
    repo = "gerbil-crypto";
    rev = "5e0d2e05c2d658c08860f3f9c9a1c7b932abcc47";
    sha256 = "0g7fdbgf7c4lw9kl73zj3kr2rdwi4ws8l7nxmprrb65mkcmcgzaq";
  };
  meta = {
    description = "Gerbil Crypto: Extra Cryptographic Primitives for Gerbil";
    homepage    = "https://github.com/fare/gerbil-crypto";
    license     = lib.licenses.asl20;
    platforms   = lib.platforms.unix;
    maintainers = with lib.maintainers; [ fare ];
  };
}
