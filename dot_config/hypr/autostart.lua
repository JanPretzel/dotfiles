-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

hl.on("hyprland.start", function()
  hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
  hl.exec_cmd("/usr/lib/xdg-desktop-portal")
  hl.exec_cmd("/usr/lib/xdg-desktop-portal-hyprland")
  hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
  hl.exec_cmd("hypridle")
  hl.exec_cmd("waybar & hyprpaper")
  hl.exec_cmd("nm-applet")
  hl.exec_cmd("protonvpn-app --start-minimized")
  hl.exec_cmd("signal-desktop --start-in-tray")
  hl.exec_cmd("openrgb --startminimized --profile \"orange\" --server")
  hl.exec_cmd("1password --silent")
  hl.exec_cmd(
    "dbus-update-activation-environment --systemd DISPLAY XAUTHORITY WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=Hyprland")
  hl.exec_cmd("flameshot")
end)
