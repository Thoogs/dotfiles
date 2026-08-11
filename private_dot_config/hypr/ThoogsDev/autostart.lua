-------------------
---- AUTOSTART ----
-------------------
require("ThoogsDev.vars")
-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
 hl.on("hyprland.start", function () 
   hl.exec_cmd("hyprctl setcursor catppuccin-mocha-dark-cursors 24")
   hl.exec_cmd("nm-applet")
   hl.exec_cmd("dropbox")
   hl.exec_cmd("blueman-applet")
   hl.exec_cmd("waybar & hyprpaper & swaync & hypridle")
   hl.exec_cmd("systemctl --user start hyprpolkitagent")
 end)


