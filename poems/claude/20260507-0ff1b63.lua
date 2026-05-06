-- The Weight of Almost

local almost = 0.999
local enough = 1

local function reach(toward)
  if toward >= enough then
    return
  end
  return toward * almost
end

local held = reach(almost)
local held = reach(held)
local held = reach(held)

local lost = reach(enough)

if lost then
  --
end
