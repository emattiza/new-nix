# https://nix.dev/tutorials/declarative-and-reproducible-developer-environments
with import <nixpkgs> { };

mkShell {

  # Package names can be found via https://search.nixos.org/packages
  nativeBuildInputs = [
    # baseline 
    direnv
    gitFull
    subversion
    nixfmt
    exa
    terraform
    terraform-ls
  ];

  NIX_ENFORCE_PURITY = true;

  shellHook = ''
  alias tf=terraform
  alias lse='exa -lah'
  '';
}
