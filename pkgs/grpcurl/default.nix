{ lib, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "grpcurl";
  version = "1.8.6";

  src = fetchFromGitHub {
    owner = "fullstorydev";
    repo = "${pname}";
    rev = "v${version}";
    sha256 = "sha256-dS9r738y0B+p2eoo1NV54OEeRzsj9fOs09NB3HRKmJY=";
  };

  vendorSha256 = "sha256-rXk5/GT9g8gfL4EU7Hn0qG/BRSftK4l5IssGXkwwDLI=";
  proxyVendor = true;

  meta = with lib; {
    description = "Like cURL, but for gRPC: Command-line tool for interacting with gRPC servers ";
    license = lib.licenses.mit;
    homepage = "https://github.com/fullstorydev/${pname}";
    platforms = platforms.linux ++ platforms.darwin;
  };
}
