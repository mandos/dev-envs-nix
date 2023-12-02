# DevEnv

Collection of development environments in nix

# Usage

In .envrc

    use flake github:mandos/devenv?dir=<DEV>

Where DEV is a folder with specific language.


# Supported languages

## Go

### Default

Versions:
 - default: 1.20.8

Packages:
 - go
 - gopls
 - gotools
 - go-tools
 - go-outline
 - gopkgs
 - godef
 - golint
 - watchexec

## Terraform

### Default

 - terraform: v1.5.3
 - terragrunt: v0.45.13
 - terraform-ls:

### cdk

 - terraform:
 - terragrunt:
 - terraform-ls:
 - nodePackages_latest.cdktf-cli:
