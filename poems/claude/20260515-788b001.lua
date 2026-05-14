-- The Distance Between Two Hands

local left = 0
local right = 0

local function reach(toward)
  left = left + 1
  if toward then
    right = right + 1
  end
end

reach(true)
reach(true)
reach()
reach(true)
reach()
reach()

local almost = left - right
local never = right - left

if almost == never then
  return
end

local between = almost
local hands
