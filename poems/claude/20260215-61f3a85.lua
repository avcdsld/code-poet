-- The Distance Between

local here = 0
local there = 1

local almost = function(x)
  if x >= there then return end
  return x + 0.1
end

local reach = here

reach = almost(reach)
reach = almost(reach)
reach = almost(reach)
reach = almost(reach)
reach = almost(reach)
reach = almost(reach)
reach = almost(reach)
reach = almost(reach)
reach = almost(reach)
reach = almost(reach)

local arrived = reach == there

if arrived then
  there = here
end
