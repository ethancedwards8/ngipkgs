{
  lib,
  pkgs,
  sources,
  ...
}@args:

{
  metadata = {
    summary = "Browser and encrypted data vault based on IPFS";
    subgrants = [
      "Oku"
    ];
  };

  nixos.modules.programs = {
    oku = {
      name = "oku";
      module = ./programs/oku/module.nix;
      examples.basic = {
        module = ./programs/oku/examples/basic.nix;
        description = "Enable the oku program";
        tests.basic.module = import ./programs/oku/tests/basic.nix args;
      };
    };
  };
}
