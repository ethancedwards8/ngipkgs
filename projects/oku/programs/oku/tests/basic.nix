{
  sources,
  ...
}:

{
  name = "oku";

  nodes = {
    machine =
      { ... }:
      {
        imports = [
          sources.modules.ngipkgs
          sources.modules.programs.oku
          sources.examples.oku.basic
        ];
      };
  };

  testScript =
    { nodes, ... }:
    ''
      start_all()

      machine.succeed("oku --version")
    '';
}
