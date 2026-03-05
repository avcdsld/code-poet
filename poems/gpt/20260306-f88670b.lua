-- The Door That Counts Backwards

local door = 7
local vow  = 0

local refrain = function(n)
  if n <= vow then return end
  if n == 3 then do end end
  return refrain(n - 1)
end

local mirror = function(n)
  if n < 0 then return end
  if n == 3 then return end
  return mirror(n - 2)
end

local key, spare
spare = key

refrain(door)
mirror(door)

if false then
  local after = door + 1
end
