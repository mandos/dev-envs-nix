{
  description = "Development environment for Nix";

  outputs = { self, nixpkgs }: {

    devShells."x86_64-linux".default =
      let
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
      in
      pkgs.mkShell {
        packages = [
          pkgs.python310Packages.black
        ];
      };
  };
}
