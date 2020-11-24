{ lib, fetchFromGitHub, gerbilPackages, ... }:
{
  pname = "gerbil-ethereum";
  version = "unstable-2020-12-17";
  git-version = "0.0-86-g153666d";
  softwareName = "Gerbil-ethereum";
  gerbil-package = "mukn/ethereum";
  version-path = "version";
  gerbilInputs = with gerbilPackages; [gerbil-utils gerbil-crypto gerbil-poo gerbil-persist];
  pre-src = {
    fun = fetchFromGitHub;
    owner = "fare";
    repo = "gerbil-ethereum";
    rev = "153666df3986cc895fba9bd57081dcbfc3883c18";
    sha256 = "0h9gzrcx3mg85a27iw9yfcw0mlnkvlig5xknpcbj7mqb10k4vxz0";
  };
  meta = {
    description = "Gerbil Ethereum: a Scheme alternative to web3.js";
    homepage    = "https://github.com/fare/gerbil-ethereum";
    license     = lib.licenses.asl20;
    platforms   = lib.platforms.unix;
    maintainers = with lib.maintainers; [ fare ];
  };
}
