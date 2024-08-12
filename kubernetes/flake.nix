{
  description = "Tools for different versions of Kubernetes";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs.inputs.nixpkgs.follows = "nixpkgs";

    v1_25.url = "github:NixOS/nixpkgs/79b3d4bcae8c7007c9fd51c279a8a67acfa73a2a";
  };

  outputs = { self, nixpkgs, v1_25 }: {
    devShells.x86_64-linux.v1_25 = with nixpkgs.legacyPackages.x86_64-linux; mkShell {
      buildInputs = [
        v1_25.legacyPackages.x86_64-linux.kubectl
        kubernetes-helm
        k9s
        bashInteractive
        pluto
        nova
      ];

      shellHook = ''
        # BUG: complete: command not found, have to run manually
        source ${v1_25.legacyPackages.x86_64-linux.kubectl}/share/bash-completion/completions/kubectl.bash
      '';
    };
  };
}
