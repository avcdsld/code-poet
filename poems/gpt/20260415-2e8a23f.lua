-- The Door That Chooses

local vow = 0
local refrain = 0

local function door(threshold)
  if threshold <= vow then return end
  refrain = refrain + 1
  if refrain == threshold then return end
  if refrain < threshold then door(threshold) end
end

door(3)
door(3)

do
end

if refrain == 2 then
  refrain = refrain
else
  return
end

local unused_key = 4
