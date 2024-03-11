{
  description = "A Nix-flake-based Kubernetes playground";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/release-23.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    { self
    , nixpkgs
    , flake-utils
    }:

    flake-utils.lib.eachDefaultSystem (system:
    let
      overlays = [
        (self: super: rec {
          kind = super.kind;
          kubectl = super.kubectl;
          krew = super.krew;
        })
      ];
      pkgs = import nixpkgs { inherit overlays system; };
    in
    {
      devShells.default = pkgs.mkShell {
        packages = with pkgs; [ kind kubectl krew ];

        shellHook = ''
        '';
      };
    });
}
