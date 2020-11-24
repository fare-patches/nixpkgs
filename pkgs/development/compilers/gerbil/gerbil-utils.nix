{ lib, fetchFromGitHub, ... }:
{
  pname = "gerbil-utils";
  version = "unstable-2020-12-17";
  git-version = "0.2-70-g015cc07";
  softwareName = "Gerbil-utils";
  gerbil-package = "clan";
  version-path = "version";
  pre-src = {
    fun = fetchFromGitHub;
    owner = "fare";
    repo = "gerbil-utils";
    rev = "015cc0715f3cc11dad7ea3962b8fdd90af235eef";
    sha256 = "1yj82g6mpzvgzillvcch3d0dj1fyvjwarsvj7x1xkf10rld5anqg";
  };
  meta = {
    description = "Gerbil Clan: Community curated Collection of Common Utilities";
    homepage    = "https://github.com/fare/gerbil-utils";
    license     = lib.licenses.lgpl21;
    platforms   = lib.platforms.unix;
    maintainers = with lib.maintainers; [ fare ];
  };
}
