{ lib, poetry2nix, python37, fetchFromGitHub }:

poetry2nix.mkPoetryApplication rec{
  pname = "aw-watcher-mpd";
  version = "b1a1cf2c11ea4b67d4033d928a027f66aefd2ed2";

  projectDir = fetchFromGitHub {
    owner = "Kalelzar";
    repo = pname;
    rev = version;
    sha256 = "sha256-YkzKvZ5Nx74Q02zYKZzJYhqxFZhq9xfvru4deGUmaVI=";
  };
  overrides = poetry2nix.defaultPoetryOverrides.extend (self: super: {
    timeslot = super.timeslot.overridePythonAttrs (
      old: {
        buildInputs = (old.buildInputs or [ ]) ++ [ self.poetry ];
      }
    );
    aw-core = super.aw-core.overridePythonAttrs (
      old: {
        buildInputs = (old.buildInputs or [ ]) ++ [ self.poetry ];
      }
    );
    aw-client = super.aw-client.overridePythonAttrs (
      old: {
        buildInputs = (old.buildInputs or [ ]) ++ [ self.poetry ];
      }
    );
  });
  python = python37;

  meta = with lib; {
    homepage = "https://github.com/Kalelzar/aw-watcher-mpd";
    description = "An ActivityWatch watcher for the Music Player Daemon";
  };
}
