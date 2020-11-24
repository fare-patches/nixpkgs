{ lib, fetchFromGitHub, gerbilPackages, ... }:
{
  pname = "gerbil-persist";
  version = "unstable-2020-12-12";
  git-version = "0.0-10-g0bf24e0";
  softwareName = "Gerbil-persist";
  gerbil-package = "clan/persist";
  version-path = "version";
  gerbilInputs = with gerbilPackages; [gerbil-utils gerbil-crypto gerbil-poo];
  pre-src = {
    fun = fetchFromGitHub;
    owner = "fare";
    repo = "gerbil-persist";
    rev = "0bf24e01e19f37a01c6abdd267354af7927739b2";
    sha256 = "0lsnpv2lbngvmrxyf8abihrmvl356kh5cxj4pwl2wfzkqk7p0b9q";
  };
  meta = {
    description = "Gerbil Persist: Persistent data and activities";
    homepage    = "https://github.com/fare/gerbil-persist";
    license     = lib.licenses.asl20;
    platforms   = lib.platforms.unix;
    maintainers = with lib.maintainers; [ fare ];
  };
}
