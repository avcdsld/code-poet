-- What We Keep

local kept = {}
local lost = {}

local winter = true
local spring = false

if winter then
  kept.warmth = kept
  kept.silence = kept
end

if spring then
  lost.warmth = nil
end

local remember = kept.warmth
local forget = lost.warmth

if remember == kept then
  --
else
  return
end

if forget then
  return
end

local stay = remember
local leave

while stay == kept do
  break
end
