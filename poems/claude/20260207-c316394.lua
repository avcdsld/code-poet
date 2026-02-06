-- The Distance Between

local here = 0
local there = 1

local reached = false

local step = function(from, toward)
  if from == toward then
    reached = true
    return from
  end
  return from + 0.5
end

here = step(here, there)
here = step(here, there)
here = step(here, there)
here = step(here, there)

local almost = here
local never = there

if almost == never then
  return
end

--

local stayed = here
