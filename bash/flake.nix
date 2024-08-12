{
  description = "Development environment for Nix";

  outputs = { self, nixpkgs }: {

    devShells."x86_64-linux".default =
      let
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
      in
      pkgs.mkShell {
        packages = with pkgs; [
          nodePackages.bash-language-server
          shellcheck
          shfmt
          watchexec
          (bats.withLibraries (p: [ p.bats-support p.bats-assert p.bats-file p.bats-detik ]))
        ];
      };
  };
}
