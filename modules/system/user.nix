{ self, inputs, ... }: {
    flake.nixosModules.usersFerret = { pkgs, lib, ... }: {
        users.users.ferret = {
          isNormalUser = true;
          extraGroups = [ "wheel" "mlocate" "video" "audio" "input" "networkmanager" ];
          home = "/home/ferret";
        };

    };
  }
