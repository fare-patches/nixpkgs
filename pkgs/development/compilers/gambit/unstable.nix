{ callPackage, fetchFromGitHub, gambit-support }:

callPackage ./build.nix {
  version = "unstable-2020-12-08";
  git-version = "4.9.3-1248-ga102b4d5";
  src = fetchFromGitHub {
    owner = "feeley";
    repo = "gambit";
    rev = "a102b4d5bf98f826c00f2a52c619885ab767c3f0";
    sha256 = "1j6q9bfh4pln5c4d4whi3359xnv67zj4pk1if1yydq11a7wy4ri8";
  };
  gambit-params = gambit-support.unstable-params;
}
