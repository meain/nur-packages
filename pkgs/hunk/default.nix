{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage rec {
  pname = "hunk";
  version = "0-unstable-2026-05-17";

  src = fetchFromGitHub {
    owner = "modem-dev";
    repo = "hunk";
    rev = "9b01f128976e2c2aa65e31c19967516260ff9b6f";
    hash = "sha256-aA3OenH6SBk1T+s/eJK1x2CbSIhndc2e+Cow1i2xntI=";
  };

  cargoHash = lib.fakeHash;

  meta = {
    description = "Review-first terminal diff viewer for agentic coders";
    homepage = "https://github.com/modem-dev/hunk";
    license = lib.licenses.mit;
    mainProgram = "hunk";
  };
}
