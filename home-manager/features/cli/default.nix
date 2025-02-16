{pkgs, ...}: {
  imports = [
    ./neovim.nix
    ./git.nix
    ./alacritty.nix
    ./lf.nix
    ./tmux.nix
  ];

  home.packages = with pkgs; [
    nh # nix helper
  ];
}
