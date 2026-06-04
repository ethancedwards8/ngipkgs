{
  config,
  lib,
  pkgs,
  ...
}:
let
  cfg = config.programs.lychee;
in
{
  options.programs.lychee = {
    enable = lib.mkEnableOption "lychee";
    package = lib.mkPackageOption pkgs "lychee" { };
  };

  config = lib.mkIf cfg.enable {
    environment.systemPackages = with pkgs; [
      cfg.package
    ];
  };
}
