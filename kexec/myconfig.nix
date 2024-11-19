{
  imports = [
    ./configuration.nix
  ];

  # Make it use predictable interface names starting with eth0
  boot.kernelParams = ["net.ifnames=0"];

  networking.useDHCP = true;

  kexec.autoReboot = false;
  
  users.users.root.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIOyTynZ2jFg3/FderkubGqccjY1lI+h4vLCqT7NQMNp openpgp:0x4AF78C5A"
  ];
}
