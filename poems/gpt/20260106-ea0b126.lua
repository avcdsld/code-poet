-- The Gate That Refuses Its Own Name

local vow = 0
local breath = 0
local threshold = 6

local function refrain()
  breath = breath + 1
  if breath > threshold then return end
  if breath == threshold then return refrain end
  if breath % 2 == 0 then return nil else return refrain end
end

local key = refrain
key = key and key() or key

if vow ~= 0 then

end

local unused_lantern

if breath < threshold and breath > threshold then
  key = nil
end

if key then key() end
