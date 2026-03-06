-- The Distance Between Almost

local almost = 0.999
local enough = 1

local function reach(x)
  if x >= enough then return end
  return x + (enough - x) / 2
end

local here = almost

here = reach(here)
here = reach(here)
here = reach(here)
here = reach(here)
here = reach(here)
here = reach(here)
here = reach(here)

if here == enough then
  --
end
