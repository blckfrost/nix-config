{ config, pkgs, ... }:

{
  users.users.nova = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = [ "wheel" "networkmanager" "input" "docker" ];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIO/q5OXrLYxt4/hGkpHYDlsBUaGm9xqqXlyuu+UuQ6Q3 beataanima88@gmail.com"
    ];
  };
}
