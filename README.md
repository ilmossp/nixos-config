## NixOS Config - How to Build for a Host

This repository uses flakes and integrates Home Manager into NixOS.

### Prerequisites
- Ensure flakes are enabled and you have `sudo` privileges on the target system.

### Update inputs (optional)
```bash
cd /home/ilyass/nixos-config
nix flake update
# or update a single input, e.g. zen-browser
nix flake update zen-browser
```

### Build and switch to a host configuration
Replace `<host>` with one of the defined hosts:
- `nixos-ilyass`
- `nixos-ilyass-work-laptop`

```bash
sudo nixos-rebuild switch --flake /home/ilyass/nixos-config#<host>
```

Examples:
```bash
sudo nixos-rebuild switch --flake /home/ilyass/nixos-config#nixos-ilyass
sudo nixos-rebuild switch --flake /home/ilyass/nixos-config#nixos-ilyass-work-laptop
```

### Build without switching (test build)
```bash
sudo nixos-rebuild build --flake /home/ilyass/nixos-config#<host>
```

### Apply on next boot
```bash
sudo nixos-rebuild boot --flake /home/ilyass/nixos-config#<host>
```

### Notes
- Home Manager is integrated into each host (via `home-manager.nixosModules.home-manager`), so `nixos-rebuild` applies both system and home changes.
- If a browser or GUI app is running during a rebuild (e.g., Zen Browser), close it before switching if you hit activation issues.



