{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "vortex-shell";
  buildInputs = with pkgs; [
    sops
    age
  ];
  shellHook = ''
    echo "Installed: sops, age"

    export SOPS_AGE_KEY_FILE="$HOME/.config/sops/age/sops-key.txt"
    echo "SOPS_AGE_KEY_FILE set to: $SOPS_AGE_KEY_FILE"
  '';
}

