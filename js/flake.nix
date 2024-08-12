{
  description = "Development environment for Java Script";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    node14pkgs.url = "github:NixOs/nixpkgs/55070e598e0e03d1d116c49b9eff322ef07c6ac6";
  };

  outputs = { self, nixpkgs, node14pkgs }: {

    devShells."x86_64-linux" =
      let
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        node14 = node14pkgs.legacyPackages.x86_64-linux;
      in
      {
        default = pkgs.mkShell {
          packages = [
            pkgs.nodejs
          ];
        };

        node14 = pkgs.mkShell {
          packages = [
            node14.elmPackages.nodejs
          ];
        };

      };
  };
}
