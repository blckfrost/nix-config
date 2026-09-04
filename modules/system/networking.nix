{ ... }:

{
  networking.hostName = "zion";

  networking.networkmanager.enable = true;
  
  services.tailscale.enable = true;

  networking.firewall = {
    enable = true;
    trustedInterfaces = [ "tailscale0"  ];
    allowedTCPPorts = [ 53 80 3005 9191 ];
    allowedUDPPorts = [ 53 ];
  };
  
  services.timesyncd.enable = true;
}
