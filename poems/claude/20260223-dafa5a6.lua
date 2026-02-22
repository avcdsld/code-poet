-- The Distance Between

local here = 0
local there = 1

local between = there - here

local closer = function()
  here = here + between / 2
  between = there - here
end

local arrived = function()
  return here == there
end

closer()
closer()
closer()
closer()
closer()
closer()
closer()

if arrived() then
  return
end

--

local always_between = between
local never_there = here
