{ config, pkgs, ... }:
{ 
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;


    shellAliases = {
      nrsf = "sudo nixos-rebuild switch --flake /etc/nixos#zion";
      nrst = "sudo nixos-rebuild test --flake /etc/nixos#zion";


      # docker
      dkcu = "docker compose up";
      dkcd = "docker compose down";
      dkcl = "docker compose logs -f";
      dkps = "docker ps --format 'table {{.Names}}\t{{.Status}}\t{{.Ports}}'";
      
      # sops
      edit-secrets = "sudo -E sops /etc/nixos/secrets/secrets.yaml";
    };

    promptInit = ''
      autoload -U colors && colors
      PS1="%{$fg[cyan]%}%n@%m%{$reset_color%}:%{$fg[yellow]%}%~%{$reset_color%}$ "
    ''; 

    histSize = 5000;
    setOptions = [
      "HIST_IGNORE_DUPS"
      "SHARE_HISTORY"
    ];
  };

  environment.variables = {
    SOPS_AGE_KEY_FILE = "/var/lib/sops-nix/key.txt";
    EDITOR = "vim";
  };
}
