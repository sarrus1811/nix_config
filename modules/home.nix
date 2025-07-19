# Home configuration
{ config, pkgs, ... }:

{
  # Home Manager options
  home.username = "nix"; # Sensitive, Should match
  home.homeDirectory = "/home/nix";
  home.stateVersion = "25.05"; # IMPORTANT: Should match

  # User-specific packages
  home.packages = with pkgs; [
    # Programs 
    chromium
    terminator
    tmux
    nerd-fonts.hack
    nerd-fonts.mononoki
    nerd-fonts.fira-code
    nerd-fonts.jetbrains-mono
    htop
    # CLI tools that are user-specific or you prefer to manage with HM
  ];

  # Program configurations
    programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    extensions = with pkgs.vscode-extensions; [
      zhuangtongfa.material-theme
      ms-vscode.cpptools
      shopify.ruby-lsp
      tuttieee.emacs-mcx
      golang.go
    ];
    userSettings = {
      "editor.tabSize" = 2;
      "workbench.colorTheme" = "One Dark Pro Darker";
      "editor.fontFamily" = "Hack Nerd Font Mono";
    };
  }; 

  # Other home manager imports
  # imports = [
  #   ...
  # ];
}
