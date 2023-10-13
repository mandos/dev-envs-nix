# DevEnv

Collection of development environments in nix

## Usage

In .envrc

    use flake github:mandos/devenv?dir=<DEV>

Where DEV is a folder with specific language.


## Supported languages

### Go

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
