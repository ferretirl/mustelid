{ self, inputs, ... }: {
    flake.homeModules.easyeffects = { pkgs, lib, ... }: {
        services.easyeffects = {
            enable = true;
          };
      };
  }
