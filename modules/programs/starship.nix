{ self, inputs, ... }: {
    flake.homeModules.starship = { pkgs, lib, ... }: {
      programs.starship = {
          enable = true;
          enableFishIntegration = true;
          settings = {
            format = "[╭](dimmed white)[─](dimmed white)[ $username](bold #b8d4e8)[ in](dimmed white) [$directory](white)$git_branch$git_status\n[╰─❯](dimmed white) ";
            username = {
                format = "[$user]($style)";
                show_always = true;
                style_user = "bold #b8d4e8";
            };
            directory = {
                format = "[ ](#b8d4e8)[$path](#b8d4e8)";
                truncation_length = 3;
                truncate_to_repo = true;
                style = "";
            };
            git_branch = {
                format = " [[ ](#f5b8cf bold)$branch](#f5b8cf)";
                symbol = "";
            };
            git_status = {
                format = "[ $all_status$ahead_behind](#b8d4e8)";
                conflicted = "=";
                ahead =	"⇡\${count}";
                behind = "⇣\${count}";
                diverged = "⇕⇡\${ahead_count}⇣\${behind_count}";
                up_to_date = " 󰄬 ";
                untracked = " ?\${count} ";
                stashed = " 󰏖 ";
                modified = " !\${count} ";
                staged = " +\${count} ";
                renamed = " »\${count} ";
                deleted = " 󰅖\${count} ";
            };
            character = {
                success_symbol = "";
                error_symbol = "";
            };
          };
      };
    };
}
