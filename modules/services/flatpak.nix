{ self, inputs, ... }: {
    flake.nixosModules.flatpak = { pkgs, lib, ... }: {
        services.flatpak = {
            enable = true;
          };
      };
  }
