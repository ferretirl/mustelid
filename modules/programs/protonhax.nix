{ self, inputs, ... }: {
  flake.homeModules.protonhax = { pkgs, lib, ... }:
  let
    protonhax = pkgs.stdenv.mkDerivation {
      pname = "protonhax";
      version = "1.0.5";
      src = pkgs.fetchurl {
        url = "https://raw.githubusercontent.com/jcnils/protonhax/main/protonhax";
        hash = "sha256-QSe/mW8GjH6CX1TnO/RiHJIffrv6uZZmD8+IN2Z5In8=";
      };
      dontUnpack = true;
      installPhase = ''
        mkdir -p $out/bin
        cp $src $out/bin/protonhax
        chmod +x $out/bin/protonhax
      '';
    };
  in
  {
    home.packages = [ protonhax ];
  };
}
