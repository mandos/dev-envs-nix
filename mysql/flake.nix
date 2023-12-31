{
  description = "MySQL tools";

  outputs = { self, nixpkgs }: {

    devShells."x86_64-linux".default =
      let
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
      in
      pkgs.mkShell {
        packages = with pkgs; [
          mysql-client
          mysql-shell
        ];
      };
  };
}
