{ self, inputs, ... }: {
    flake.homeModules.hyprpicker = { pkgs, lib, ... }: {
        programs.hyprshot = {
            enable = true;
            saveLocation = "$HOME/Pictures/Screenshots";
          };
      };
  }
