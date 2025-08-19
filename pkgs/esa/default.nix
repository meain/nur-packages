{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "esa";
  version = "0.2.0";

  src = fetchFromGitHub {
    owner = "meain";
    repo = "esa";
    rev = "v${version}";
    hash = "sha256-MZRtw9nVnAw6GGVwfujdMpjwFB+h/n8CXWwlFPqz77g=";
  };

  vendorHash = "sha256-qoFxm5sNHBOnm10kZsbnMVf+R5BpvjivqHpHTCvFVXA=";

  ldflags = [ "-s" "-w" ];

  meta = {
    description = "Fastest way to create personalized AI agents";
    homepage = "https://github.com/meain/esa";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ meain ];
    mainProgram = "esa";
  };
}
