-- The Distance Between

local here = 0
local there = 1

local you = here
local me = there

local bridge = function()
  if you == me then
    return
  end
end

local waited = true
local arrived = false

bridge()

local remains = there - here
