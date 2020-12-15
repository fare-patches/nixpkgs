{ lib, fetchFromGitHub, ... }:
{
  pname = "smug-gerbil";
  version = "unstable-2020-12-12";
  git-version = "cf23a47";
  softwareName = "Smug-Gerbil";
  gerbil-package = "drewc/smug";
  pre-src = {
    fun = fetchFromGitHub;
    owner = "drewc";
    repo = "smug-gerbil";
    rev = "cf23a47d0891aa9e697719309d04dd25dd1d840b";
    sha256 = "13fdijd71m3fzp9fw9xp6ddgr38q1ly6wnr53salp725w6i4wqid";
  };
  meta = {
    description = "Super Monadic Über Go-into : Parsers and Gerbil Scheme";
    homepage    = "https://github.com/drewc/smug-gerbil";
    license     = lib.licenses.mit;
    platforms   = lib.platforms.unix;
    maintainers = with lib.maintainers; [ fare ];
  };
}
