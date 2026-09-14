-- Auto-start config
-- if you dont use UWSM add your auto start programs here, otherwise use XDG autostart https://wiki.archlinux.org/title/XDG_Autostart

local gtk_theme = "gsettings set org.gnome.desktop.interface "
local gtk4_theme = gtk_theme .. "color-scheme 'prefer-dark'"
local gtk3_theme = gtk_theme .. "gtk-theme 'adw-gtk3-dark'"

hl.on("hyprland.start", function ()
    hl.exec_cmd("dbus-update-activation-environment --systemd --all")
    hl.exec_cmd("noctalia")
    hl.exec_cmd("xhost +SI:localuser:root")
    hl.exec_cmd(gtk3_theme)
    hl.exec_cmd(gtk4_theme)
end)
