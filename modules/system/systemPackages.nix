{ self, inputs, ... }: {
    flake.nixosModules.systemPackages = { pkgs, lib, ... }:{
        programs = {
            hyprland = { 
              enable = true;
              withUWSM = true;
              xwayland.enable = true;
            };
            fish.enable = true;
            steam.enable = true;
          };

        environment.systemPackages = with pkgs; [
          git
          wget
          gcc
          wl-clipboard
          fzf
          tree-sitter
          psmisc
          terminus_font
        ];
      };
  }
