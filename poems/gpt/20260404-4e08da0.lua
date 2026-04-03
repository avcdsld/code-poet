-- The Door That Learns Your Knuckles

local hush = nil
local knock = 0
local refrain = function() return knock end

local function door(step)
  if step > 3 then return hush end
  knock = knock + 1
  if knock == 2 then return hush end
  return door(step + 1)
end

do
end

local kept = door(1)

if kept then
  return
end

refrain()
refrain()

if knock < 2 then
  return
end

local key_without_lock
