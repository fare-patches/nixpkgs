{ lib, fetchFromGitLab, gerbil-support, gerbilPackages, ... }:
rec {
  pname = "glow-lang";
  version = "unstable-2020-12-13";
  git-version = "0.0-559-g03d461a";
  softwareName = "Glow";
  gerbil-package = "mukn/glow";
  version-path = "version";
  gerbilInputs = with gerbilPackages;
    [gerbil-utils gerbil-crypto gerbil-poo gerbil-persist gerbil-ethereum
     gerbil-libp2p smug-gerbil];
  pre-src = {
    fun = fetchFromGitLab;
    owner = "mukn";
    repo = "glow";
    rev = "03d461af75b3f43dfb674047963e99f77a3c2cc0";
    sha256 = "1fv31vdhg2bl1cpnw8fk6y9r0x2rjmmnwjbil6advnc5nw34qkdw";
    };
  postInstall = ''
    cat > $out/bin/glow <<END
    #!/bin/sh
    ORIG_GERBIL_LOADPATH="\$GERBIL_LOADPATH"
    GERBIL_LOADPATH="${gerbil-support.gerbilLoadPath (["$out"] ++ gerbilInputs)}"
    export GERBIL_LOADPATH ORIG_GERBIL_LOADPATH
    exec $out/gerbil/bin/glowrun "\$@"
    END
    chmod a+x $out/bin/glow
    '';
  meta = {
    description = "Glow: language for safe Decentralized Applications (DApps)";
    homepage    = "https://glow-lang.org";
    license     = lib.licenses.asl20;
    platforms   = lib.platforms.unix;
    maintainers = with lib.maintainers; [ fare ];
  };
}
