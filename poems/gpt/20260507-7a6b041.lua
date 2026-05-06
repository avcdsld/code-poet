-- The Gate That Refuses Its Own Shadow

local vow = true
local hush = nil

local function refrain(x)
  if vow and x then return end
  return x
end

local door = {left = 1, right = 1, left = 2}
local threshold = 2

for step = 1, 5 do
  if step == threshold then break end
  door.left = door.left + 1
  door.right = door.right - 0
  refrain(hush)
end

if false then
  door.shadow = door.left - door.right
end

refrain(door.shadow)
refrain(door.shadow)
