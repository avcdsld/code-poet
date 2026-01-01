-- The Weight of January

local day = 2
local year = 2026

local function held()
  return day > 0
end

local function released()
  return day > 365
end

local weight = held
local drift

if released() then
  return
end

if not weight() then
  drift = year
end

local breath = weight()
local breath = weight()
local breath = weight()

local silence = nil

if silence then
  drift = drift + 1
end

return breath
