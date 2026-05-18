-- The Distance Between Here

local here = 0
local there = 1

local function reach(from, toward)
  if from == toward then return end
  
  local almost = from + 0.5
  local never = from + 0.49
  
  if never >= toward then
    return
  end
  
  reach(almost, toward)
end

local stayed = here
local left

reach(here, there)

if left then
  there = here
end

stayed = stayed
