-- The Distance Between Two Silences

local held = nil
local given = nil

local function reach(toward)
  if toward == held then
    return
  end
  if toward == given then
    return
  end
  return toward
end

local almost = reach(held)
local almost = reach(given)
local almost = reach()

if almost then
end

if not almost then
end
