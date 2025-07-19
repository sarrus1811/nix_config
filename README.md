**Configuration for Nixos using Nix flakes.**

### How to run
1. Create a user with name "nix"
2. Add this to the configuration.nix ```nix.settings.experimental-features = [ "nix-command" "flakes" ];``` at /etc/nixos
3. Run ```sudo nixos-rebuild switch```
4. Make a directory (e.g. nix_config) and copy modules folder to it.
5. Move both configuration.nix and hardware-configuration.nix into the directory
6. Run ```nix flake update```
7. Run ```sudo nixos-rebuild switch --flake .#nix```
