{ pkgs, lib, poetry2nix, python3, fetchFromGitHub }:

poetry2nix.mkPoetryApplication rec{
  pname = "aw-watcher-input";
  version = "3313b4a4ce625b169da1d5ef96bc4dfd167a15e3";

  projectDir = fetchFromGitHub {
    owner = "ActivityWatch";
    repo = pname;
    rev = version;
    sha256 = "sha256-mTAJ589L1RQRGSUdjdb3USQ4+S2TtEF0MUUmDhwpyFw=";
  };
  python = python3;
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
    aw-watcher-afk = super.aw-watcher-afk.overridePythonAttrs (
      old: {
        buildInputs = (old.buildInputs or [ ]) ++ [ self.poetry ];
      }
    );
    pylint = super.pylint.overridePythonAttrs (old: {
      postPatch = ''
        substituteInPlace setup.cfg --replace 'tomlkit>=0.10.1' 'tomlkit'
      '';
    });
  });

  meta = with lib; {
    homepage = "https://github.com/ActivityWatch/aw-watcher-input";
    description = "Track your keypresses and mouse movements with ActivityWatch";
  };
}
