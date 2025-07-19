**Configuration for Nixos using Nix flakes.**

### How to run
1. Create a user with name "nix"
2. Run ```nix-shell -p git```
3. Add this to /etc/nixos/configuration.nix ```nix.settings.experimental-features = [ "nix-command" "flakes" ];```
4. Run ```sudo nixos-rebuild switch```
5. Make a directory (e.g. nix_config) and copy modules folder to it.
6. Move both configuration.nix and hardware-configuration.nix from /etc/nixos into the directory
7. Run ```sudo nix flake update```
8. Run ```sudo nixos-rebuild switch --flake .#nix```
