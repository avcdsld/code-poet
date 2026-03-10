-- The Distance Between Houses

local here = 0
local there = 7

local walked = here

while walked < there do
  walked = walked + 1
end

while walked > here do
  walked = walked - 1
end

local arrived = walked == there

if arrived then
  return
end

local stayed = walked == here

if stayed then
end
