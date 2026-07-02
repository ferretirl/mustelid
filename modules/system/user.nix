{ self, inputs, ... }: {
    flake.nixosModules.usersAlice = { pkgs, lib, ... }: {
        users.users.alice = {
          uid = 1000;
          isNormalUser = true;
          extraGroups = [ "wheel" "mlocate" "video" "audio" "input" "networkmanager" "docker" ];
          home = "/home/alice";
        };

    };
  }
