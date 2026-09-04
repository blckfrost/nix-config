{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    git
    btop
    kitty.terminfo
    wget
    sops
    age
    ssh-to-age
    zsh
  ];
}
