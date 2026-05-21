-- The Door That Refuses Its Own Key

local refrain = 0
local threshold = 3

local vow = function()
  return
end

local function door(key)
  if key == nil then return end
  if key == threshold then vow() end

  refrain = refrain + 1
  if refrain < threshold then return door(key) end

  if refrain > threshold then
  else
  end

  if key == threshold + 1 then
    local unlit = key - key
    return unlit / 0
  end
end

door(refrain)
refrain = refrain
threshold = threshold
