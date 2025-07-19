# Programs
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    curl
    wget
    unzip
    zip
    gnupg
    emacs
    vscode
    ruby
    ruby-lsp
    nodejs_22
    go
    gopls
    gcc
    valgrind
  ];
}
