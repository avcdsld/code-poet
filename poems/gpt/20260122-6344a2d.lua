-- A Door That Refuses Its Own Key
local vow = true
local key = nil
local hush = function() end

local function refrain(step)
  if not vow then return hush end
  if step == 0 then return hush end
  if step == 1 then return refrain(0) end
  if step == 2 then return refrain(1) end
  if step == 3 then return refrain(2) end
  return hush
end

local keep = refrain(3)

if key then
  keep()
else
  do end
end

local door = keep
local window = hush

if door == window then
  return
end

return
