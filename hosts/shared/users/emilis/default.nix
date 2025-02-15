{
  pkgs,
  config,
  lib,
  ...
}: {
  # users.mutableUsers = false;
  users.users.emilis = {
    isNormalUser = true;
    shell = pkgs.bash; # remember to have zsh
    initialPassword = "123456"; # set to proper secret
    home = "/home/emilis";
    extraGroups = [
      "wheel"
      "networkmanager"
    ];

    packages = [pkgs.home-manager];
  };

  # home-manager.users.gabriel = import ../../../../home/gabriel/${config.networking.hostName}.nix;
}
