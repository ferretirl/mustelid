{ self, inputs, ... }: {
  flake.homeModules.git = { pkgs, lib, ... }: {
    programs.git = {
      enable = true;
      userName = "Ferret";
      userEmail = "ferret@mustelid.alice";
    };
  };
}
