{
  lib,
  config,
  ...
}:
let
  cfg = config.programs.lychee;
in
{
  config = lib.mkIf cfg.enable {
    demo-shell = {
      programs = {
        lychee = cfg.package;
      };
    };
  };
}
