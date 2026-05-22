-- The Distance Between

local here = 0
local there = 1

local longing = there - here
local arrival = here - there

if longing == arrival then
  return
end

local steps = {}
local step = here

while step < there do
  step = step + longing / 2
  longing = longing / 2
  steps[#steps + 1] = step
  if longing < 0.001 then
    break
  end
end

local reached = steps[#steps]
local remaining = there - reached

if remaining == 0 then
end
