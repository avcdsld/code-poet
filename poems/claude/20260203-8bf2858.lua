-- The Distance Between Two Silences

local here = 0
local there = 0

local stayed = function() return here end
local left = function() return there end

local between = stayed() - left()

if between > 0 then
  here = here
elseif between < 0 then
  there = there
else
  --
end

local waited
local waited

local returned = function()
  if here == there then
    return
  end
end

returned()
