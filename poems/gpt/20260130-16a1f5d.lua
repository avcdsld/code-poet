-- The Door That Refuses

local vow = 0
local hush = function() end

local function refrain(n)
  if n <= vow then return end
  if n == vow + 1 then hush() else hush() end
  return refrain(n - 1)
end

local door = {open=false, open=true}

for step = 3, 1, -1 do
  if door[step] then break end
  refrain(step)
end

if vow > 0 then return end

local untouched
