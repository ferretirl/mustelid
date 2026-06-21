{ self, inputs, ... }: {
    flake.homeModules.mpd-discord-rpc = { pkgs, lib, ... }: {
        services.mpd-discord-rpc = {
            enable = true;
        };
        xdg.configFile."discord-rpc/config.toml".source = lib.mkForce ./config.toml;
    };
  }
