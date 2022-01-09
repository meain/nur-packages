{ lib
, stdenvNoCC
, fetchFromGitHub
, gtk3
, gnome-themes-extra
, gtk-engine-murrine
, sassc
, accentColor ? "default"
}:

stdenvNoCC.mkDerivation rec {
  pname = "orchis";
  version = "2021-10-03";

  src = fetchFromGitHub {
    repo = "Fluent-gtk-theme";
    owner = "vinceliuice";
    rev = version;
    sha256 = "sha256:0njnv9hrwrwd43ild4sbh4kcc865xj0yyk5zkg21sas5hwl3g4im";
  };

  nativeBuildInputs = [ gtk3 sassc ];

  buildInputs = [ gnome-themes-extra ];

  propagatedUserEnvPkgs = [ gtk-engine-murrine ];

  dontPatch = true;
  dontConfigure = true;
  dontBuild = true;

  preInstall = ''
    mkdir -p $out/share/themes
  '';

  installPhase = ''
    runHook preInstall
    bash install.sh -d $out/share/themes -t ${accentColor}
    runHook postInstall
  '';

  meta = with lib; {
    description = "A Material Design theme for GNOME/GTK based desktop environments.";
    homepage = "https://github.com/vinceliuice/Fluent-gtk-theme";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
