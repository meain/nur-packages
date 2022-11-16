{ lib
, buildGo117Module
, fetchFromGitHub
}:

buildGo117Module rec {
  pname = "grpc-gateway";
  version = "2.14.0";

  src = fetchFromGitHub {
    owner = "grpc-ecosystem";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-lnNdsDCpeSHtl2lC1IhUw11t3cnGF+37qSM7HDvKLls=";
  };

  vendorSha256 = "sha256-dGdnDuRbwg8fU7uB5GaHEWa/zI3w06onqjturvooJQA=";
  subPackages = [ "protoc-gen-grpc-gateway" "protoc-gen-openapiv2" ];

  meta = with lib; {
    homepage = "https://github.com/grpc-ecosystem/grpc-gateway";
    changelog = "https://github.com/grpc-ecosystem/grpc-gateway/releases/tag/v${version}";
    description = "gRPC to JSON proxy generator following the gRPC HTTP spec";
    license = licenses.bsd3;
  };
}
