{ self, inputs, config, ... }: {
    flake.homeModules.mpd = { pkgs, lib, config, ... }: {
        services.mpd = {
            enable = true;
            network.listenAddress = "/run/user/1000/mpd/socket";
            musicDirectory = "${config.home.homeDirectory}/Music";
            dataDir = "${config.home.homeDirectory}/.local/share/mpd";
            extraConfig = ''
              audio_output {
                  type "pipewire"
                  name "PipeWire"
                }
          
            '';
        };
        systemd.user.services.mpd.Service.RuntimeDirectory = "mpd";
    };
}
