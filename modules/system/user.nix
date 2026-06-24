{ self, inputs, ... }: {
    flake.nixosModules.usersAlice = { pkgs, lib, ... }: {
        users.users.alice = {
          isNormalUser = true;
          extraGroups = [ "wheel" "mlocate" "video" "audio" "input" "networkmanager" ];
          home = "/home/alice";
        };

    };
  }
