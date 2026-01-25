-- A Door That Learns to Stay

local hush = nil
local refrain = 0

local function vow(threshold)
  if threshold <= 0 then return end
  refrain = refrain + 1
  if refrain == threshold then return end
  vow(threshold - 1)
end

local function door(guest)
  if guest == hush then return end
  if guest > 0 then vow(guest) else end
end

door(3)
door(0)
door(-1)

local unused_key = 0
if unused_key ~= 0 then door(unused_key) end
