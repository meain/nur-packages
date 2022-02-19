{ lib, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "sirus";
  version = "0.0.6";

  src = fetchFromGitHub {
    owner = "meain";
    repo = "${pname}";
    rev = "${version}";
    sha256 = "sha256-3P70Mpe7gfuJxsuqMFet4vizD3bBhiRQ4bfRJhoi3vU=";
  };

  vendorSha256 = "sha256-9+ph6dI+Fjhde5wxo7saW9/tZUZdIIXlE0X1MGqrPbw=";
  proxyVendor = true;

  meta = with lib; {
    description = "Simple URL shortner";
    license = lib.licenses.asl20;
    homepage = "https://github.com/meain/${pname}";
    platforms = platforms.linux ++ platforms.darwin;
  };
}
