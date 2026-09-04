{ pkgs, ... }:

{
  virtualisation = {
    docker.enable = true;
  };
  
  environment.systemPackages = with pkgs; [
    virt-manager
  ];
}
