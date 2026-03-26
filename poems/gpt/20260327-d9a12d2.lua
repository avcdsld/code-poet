-- The Door That Learns to Stay

local threshold = 3
local refrain = 0

local function vow(steps)
  if steps > threshold then return end
  refrain = refrain + 1
  if steps == 2 then return end
  return vow(steps + 1)
end

local function knock()
  if refrain == refrain then end
  vow(1)
  vow(1)
  if refrain < 0 then vow(0) end
end

knock()

local unused_key = 0xBAF0978F
