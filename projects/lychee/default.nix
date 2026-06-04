{
  lib,
  pkgs,
  sources,
  ...
}@args:

{
  metadata = {
    summary = "Reliable and fast link checker to combat linkrot";
    subgrants.Core = [ "lychee" ];
    links = {
      repo = {
        text = "GitHub repo";
        url = "https://github.com/lycheeverse/lychee/";
      };
      homepage = {
        text = "Homepage";
        url = "https://lychee.cli.rs/";
      };
      docs = {
        text = "Documentation";
        url = "https://lychee.cli.rs/overview/";
      };
    };
  };

  nixos.modules.programs = {
    lychee = {
      name = "lychee";
      module = ./programs/lychee/module.nix;
      examples."Enable lychee" = {
        module = ./programs/lychee/examples/basic.nix;
        tests.basic.module = null;
      };
    };
  };
}
