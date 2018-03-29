{ stdenv, lib, buildGoPackage, fetchFromGitHub }:

buildGoPackage rec {
  name = "awless-${version}";
  version = "0.1.9";

  goPackagePath = "github.com/wallix/awless";

  src = fetchFromGitHub {
    owner  = "wallix";
    repo   = "awless";
    rev    = "v${version}";
    sha256 = "17br4586sycvm77a40gq0sqk3cl78mgfjf1zgibssqplmhj4mfxh";
  };

  meta = with stdenv.lib; {
    homepage = https://github.com/wallix/awless/;
    description = "A Mighty CLI for AWS";
    platforms = with platforms; linux ++ darwin;
    license = licenses.asl20;
    maintainers = with maintainers; [ pradeepchhetri ];
  };
}
