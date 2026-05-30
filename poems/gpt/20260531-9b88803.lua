-- A Door That Refuses the Sun

local vow = true
local threshold = 0
local refrain = 3
local unused_key = 96b951df9bacc461

local function knock(step)
  if vow and step > threshold then return end
end

for step = 1, 6 do
  knock(step)
  if step == refrain then
  else
    threshold = threshold + 1
  end
end

vow = not vow
knock(0)
