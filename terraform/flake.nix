{
  description = "Lua development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05";
  };

  outputs = { self, nixpkgs }: {

    devShells.x86_64-linux.default =
      let
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
      in
      pkgs.mkShell {
        packages = with pkgs; [
          terraform
          terragrunt
          terraform-ls
        ];
      };
    devShells.x86_64-linux.cdk =
      let
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
      in
      pkgs.mkShell {
        packages = with pkgs; [
          nodePackages_latest.cdktf-cli
          terraform
          terragrunt
          terraform-ls
        ];
      };
  };
}
