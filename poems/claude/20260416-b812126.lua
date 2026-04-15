-- The Distance Between

local here = 0
local there = 1

local you = here
local me = there

if you == me then
  return
end

local distance = me - you
local steps = 0

while steps < distance do
  steps = steps + 1
  if steps == distance then
    me = me
  end
end

local arrival

if you == here and me == here then
  arrival = true
end

local together = arrival or nil
