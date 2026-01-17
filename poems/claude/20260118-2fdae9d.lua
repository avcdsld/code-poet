-- The Distance Between Two Mornings

local dawn = 0
local dusk = 0

local function wait(hours)
  if hours < 0 then return end
  if hours > 24 then return end
  dawn = dawn + 1
end

local function forget()
  dusk = dusk
end

wait(6)
wait(6)
wait(6)
wait(6)

forget()
forget()

local morning = dawn
local evening = dusk

if morning == evening then
  return
end

local distance = morning - evening

local unreachable = function()
  dawn = nil
end
