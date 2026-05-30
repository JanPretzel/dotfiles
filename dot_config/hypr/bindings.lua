hl.bind("SUPER + SHIFT + Q", hl.dsp.window.close())

-- Groups
hl.bind("SUPER + G", hl.dsp.group.toggle())

hl.bind("SUPER + left", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + right", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + up", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + down", hl.dsp.focus({ direction = "down" }))

for i = 1, 10 do
  local key = i % 10 -- 10 maps to key 0
  hl.bind("SUPER + " .. key, hl.dsp.focus({ workspace = i }))
  hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({ workspace = i, follow = false }))
end

hl.bind("SUPER + SHIFT + left", hl.dsp.window.move({ window_or_group = true, direction = "l" }))
hl.bind("SUPER + SHIFT + right", hl.dsp.window.move({ window_or_group = true, direction = "r" }))
hl.bind("SUPER + SHIFT + up", hl.dsp.window.move({ window_or_group = true, direction = "u" }))
hl.bind("SUPER + SHIFT + down", hl.dsp.window.move({ window_or_group = true, direction = "d" }))

hl.bind("SUPER + ALT + left", hl.dsp.window.resize({ x = -40, y = 0, relative = true }))
hl.bind("SUPER + ALT + right", hl.dsp.window.resize({ x = 40, y = 0, relative = true }))
hl.bind("SUPER + ALT + up", hl.dsp.window.resize({ x = 0, y = -40, relative = true }))
hl.bind("SUPER + ALT + down", hl.dsp.window.resize({ x = 0, y = 40, relative = true }))
