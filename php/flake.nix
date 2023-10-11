{
  description = "Development environment for Nix";

  outputs = { self, nixpkgs }: {

    devShells."x86_64-linux".php82 =
      let
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
      in
      pkgs.mkShell {
        packages = [
          pkgs.php82
          pkgs.php82Packages.composer
          pkgs.phpactor
        ];
      };

    devShells."x86_64-linux".php81 =
      let
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        # php810 = pkgs.php81.overrideAttrs
        #   (finalAttrs: previousAttrs: {
        #     version = "8.1.0";
        #   });
      in
      pkgs.mkShell {
        packages = [
          pkgs.php81
          pkgs.php81Packages.composer
          pkgs.phpactor
        ];
      };
  };
}
