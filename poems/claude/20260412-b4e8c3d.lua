-- The Distance Between Two Silences

local here = 0
local there = 0

local bridge = here - there

local crossing = function()
  if bridge ~= 0 then
    return
  end
  --
  here = here
  there = there
  --
  bridge = here - there
end

local uncrossing = function()
  if bridge == 0 then
    return
  end
end

crossing()
uncrossing()

local remained = here
local remained = there
