{ lib, fetchFromGitHub, gerbilPackages, ... }:
{
  pname = "gerbil-poo";
  version = "unstable-2020-12-16";
  git-version = "0.0-51-g112a6bc";
  softwareName = "Gerbil-POO";
  gerbil-package = "clan/poo";
  version-path = "version";
  gerbilInputs = with gerbilPackages; [gerbil-utils gerbil-crypto];
  pre-src = {
    fun = fetchFromGitHub;
    owner = "fare";
    repo = "gerbil-poo";
    rev = "112a6bcacd016c3bc4c1ad69b4b1f0c705261f66";
    sha256 = "19sp2sv51x1fcl258yz1qqnylc2jawbji0mni64q3a0ryib53fgv";
  };
  meta = {
    description = "Gerbil POO: Prototype Object Orientation for Gerbil Scheme";
    homepage    = "https://github.com/fare/gerbil-poo";
    license     = lib.licenses.asl20;
    platforms   = lib.platforms.unix;
    maintainers = with lib.maintainers; [ fare ];
  };
}
