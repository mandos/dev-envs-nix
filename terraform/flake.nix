{
  description = "Terraform and Terragrunt development environment";

  outputs = { self, nixpkgs }: {

    devShells.x86_64-linux.default =
      let
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
      in
      pkgs.mkShell {
        packages = with pkgs; [
          tenv
          terraform-ls
          terraform-docs
        ];
      };
    devShells.x86_64-linux.cdk =
      let
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
      in
      pkgs.mkShell {
        packages = with pkgs; [
          tenv
          nodePackages_latest.cdktf-cli
          terraform-ls
          terraform-docs
        ];
      };
  };
}
