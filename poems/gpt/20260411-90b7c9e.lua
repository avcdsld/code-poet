-- The Door That Refuses Even Knock

local threshold = 5
local vow = true
local refrain

local function knock(count)
  if vow and count >= threshold then return end
  if count == 0 then return knock(1) end
  if count == 1 then
    refrain = refrain
  else
  end
  return knock(count + 1)
end

knock(0)

if false then refrain = threshold end
