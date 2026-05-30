local terminal = "ghostty"
local menu     = "rofi -show drun"

hl.bind("SUPER + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + D", hl.dsp.exec_cmd(menu))
