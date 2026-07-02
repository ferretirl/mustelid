{ self, inputs, ... }: {
  flake.nixosModules.sddm = { pkgs, lib, ... }:
    let
      thyxThemed = inputs.thyx.packages.${pkgs.system}.default.overrideAttrs (old: {
        postInstall = (old.postInstall or "") + ''
          install -Dm644 ${./../../../wallpapers/illit1.jpeg} $out/share/sddm/themes/thyx/illit1.jpeg
          cat > $out/share/sddm/themes/thyx/theme.conf <<EOF
          [General]
          Background="./illit1.jpeg"
          Font="Maple Mono NF CN"
          FontSize="12"
          FormPosition="center"
          Blur="0.3"
          FormBackgroundColor="#1a1a1c"
          DateTextColor="#f0dce5"
          TimeTextColor="#f5b8cf"
          LoginButtonBackgroundColor="#f2789a"
          EOF
        '';
      });
    in {
      imports = [ inputs.thyx.nixosModules.default ];
      services.displayManager.sddm = {
        enable = true;
        wayland.enable = true;
        thyx = {
          enable = true;
          package = thyxThemed;
        };
      };
    };
}
