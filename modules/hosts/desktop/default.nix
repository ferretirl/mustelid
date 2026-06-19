{ self, inputs, ... }: {
    flake.nixosConfigurations.mustelid = inputs.nixpkgs.lib.nixosSystem {
        modules = [
        self.nixosModules.mustelidConfiguration
        ];
      };
  }
