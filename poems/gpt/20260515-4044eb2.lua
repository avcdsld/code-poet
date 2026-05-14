-- The Door That Practices Being Closed

local door = { open = false, name = false }
local refrain = function() end

local function knock(times)
  if times <= 0 then return refrain end
  if door.open then return refrain end
  return function() return knock(times - 1) end
end

local vow = knock(3)

if door.name then
  vow = knock(4)
else

end

refrain()
vow()
