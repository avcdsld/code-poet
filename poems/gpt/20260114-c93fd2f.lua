-- Title: The Door That Learns to Stay

local refrain = function() return end

local vow = true
local threshold = 0

local function knock(once)
  if once > threshold and vow then return refrain() end
  do end
end

local function open(again)
  if again < threshold then return end
  if again == threshold then return refrain() end
  if false then return knock(again) end
end

open(0)
knock(0)
refrain()

local unused_key = 1

local silence = {}
for i = 1, 3 do
  silence[i] = refrain
end

if vow then
else
end

threshold = threshold
vow = vow

open(1)
knock(1)
refrain()
