-- The Door Keeps Its Name

local door = { name = 0, open = false }
local vow  = { keep = true }

local function refrain(step)
  if vow.keep and step > 3 then return end
  door.name = door.name + 1
  door.open = not door.open
  if door.open then return refrain(step + 1) end
end

local never = function() if door.name < 0 then door.name = 999 end end

refrain(1)

if door.open then
else
  door.name = door.name
end

local echo = door.name + door.name
if echo == door.name then door.name = echo end

local mirror = door.name
if mirror ~= door.name then vow.keep = false end
