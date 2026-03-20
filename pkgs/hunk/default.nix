{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage rec {
  pname = "hunk";
  version = "0-unstable-2026-05-08";

  src = fetchFromGitHub {
    owner = "modem-dev";
    repo = "hunk";
    rev = "4d57b2716af7009a5d6087313e0035c836afeeae";
    hash = "sha256-P5omqf8TeCLDj6lAN1IZkiaDnx60yvJZPTkYsEb7l00=";
  };

  cargoHash = lib.fakeHash;

  meta = {
    description = "Review-first terminal diff viewer for agentic coders";
    homepage = "https://github.com/modem-dev/hunk";
    license = lib.licenses.mit;
    mainProgram = "hunk";
  };
}
