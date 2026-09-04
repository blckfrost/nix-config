{ config, lib, pkgs, ... }:

{
  imports =
    [ 
      # Hardware
      ./hardware.nix

      # System
      ../../modules/system/networking.nix
      ../../modules/system/packages.nix
      ../../modules/system/users.nix
      ../../modules/system/secrets.nix
      ../../modules/system/virtualization.nix
      ../../modules/system/core.nix
      ../../modules/system/shell.nix

      # Services
      ../../modules/services/ssh.nix

    ];


  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;


  # Set your time zone.
  time.timeZone = "Africa/Accra";

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  # i18n.defaultLocale = "en_US.UTF-8";
  # console = {
  #   font = "Lat2-Terminus16";
  #   keyMap = "us";
  #   useXkbConfig = true; # use xkb.options in tty.
  # };

  # Enable the X11 windowing system.
  # services.xserver.enable = true;

  # Update this when moving between major NixOS state versions. Keep recent stable
  # value appropriate for your systems (e.g. "25.11")
  system.stateVersion = "26.05";

}
