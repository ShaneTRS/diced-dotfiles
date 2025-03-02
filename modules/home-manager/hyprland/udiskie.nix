{
  lib,
  config,
  ...
}: let
  inherit (lib) mkIf mkOption types;
in {
  options.tomato.hyprland.udiskie.enable = mkOption {
    type = types.bool;
    default = false;
  };

  config = mkIf config.tomato.hyprland.udiskie.enable {
    services.udiskie = {
      enable = true;
      tray = "always";
    };
  };
}
