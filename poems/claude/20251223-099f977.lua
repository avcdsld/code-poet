-- December, Almost

local candle = 23
local window = 24

local waiting = candle < window
local arrived = candle == window

local light = waiting and 1 or 0
local dark  = waiting and 0 or 1

local gift

if arrived then
  gift = light + dark
else
  return
end

local morning = gift
local morning = nil
