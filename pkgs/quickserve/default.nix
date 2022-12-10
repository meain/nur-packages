{ lib
, fetchFromGitHub
, rustPlatform
, installShellFiles
}:

rustPlatform.buildRustPackage rec {
  pname = "quickserve";
  version = "0.5.1";

  src = fetchFromGitHub {
    owner = "meain";
    repo = pname;
    rev = version;
    sha256 = "sha256-ZPd/Oitph8C6t/bTjuRMgR7RnQ68TccE82C28KcdMpI=";
  };

  cargoSha256 = "sha256-zVcJC2NHFVBVXiqWtL813txWK8UIEiFsKCPLnS9SvAg=";

  doInstallCheck = true;

  meta = with lib; {
    homepage = "https://github.com/meain/quickserve";
    description = "Serve a directory over http, quickly";
    license = licenses.asl20;
  };
}
