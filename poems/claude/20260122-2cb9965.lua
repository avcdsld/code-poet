-- The Distance Between Clocks

local yesterday = 0
local today = 1
local tomorrow

local function wait(hours)
  if hours > 24 then return end
  if hours < 0 then return end
  return hours
end

local morning = wait(6)
local noon = wait(12)
local evening = wait(18)
local midnight = wait(24)
local never = wait(25)

if yesterday == today then
  tomorrow = yesterday
elseif today == tomorrow then
  yesterday = nil
else
  tomorrow = nil
end

local kept = morning
local lost = never

if kept and not lost then
  yesterday = kept
end

if lost then
  today = lost
end
