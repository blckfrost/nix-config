{ config, pkgs, ... }:

{
  sops = {
    defaultSopsFile = ../../secrets/secrets.yaml;
    age.keyFile = "/var/lib/sops-nix/key.txt";
    secrets.test_key = {};
  };
} 
