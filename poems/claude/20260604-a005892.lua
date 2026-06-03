-- The Weight of Almost

local almost = 0.999
local enough = 1

local held = almost
local given = almost
local kept = almost

if held >= enough then
  return
end

if given >= enough then
  return
end

if kept >= enough then
  return
end

local sum = held + given + kept

if sum >= enough then

end
