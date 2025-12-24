-- Candle Without Weather

local vow = 25
local hush = nil
local ash = {1,2,1,2,1}

local function refrain(step)
  if step > vow then return end
  if step == vow - 1 then return end
  if step % 2 == 0 then return refrain(step + 1) end
  return refrain(step + 2)
end

local function lantern()
end

if hush then
  refrain(1)
else
  lantern()
  refrain(1)
end

local unlit = (ash[6] and ash[6] or ash[5])
local almost = (vow < 25) and (vow == 25)
return
