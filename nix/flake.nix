{
  description = "Development environment for Nix";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixd.url = "github:nix-community/nixd";
  };

  outputs = { self, nixpkgs, nixd }:
    let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in
    {
      devShells."x86_64-linux".default = self.devShells."x86_64-linux".nil;

      devShells."x86_64-linux".nil = pkgs.mkShell {
        packages = with pkgs; [
          nil
          nixpkgs-fmt
        ];
      };

      devShells."x86_64-linux".nixd = pkgs.mkShell {
        packages = with pkgs; [
          nixd
          nixpkgs-fmt
        ];
      };

      formatter."x86_64-linux" = nixpkgs.legacyPackages.x86_64-linux.nixpkgs-fmt;
    };
}
