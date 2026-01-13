-- The Distance Between Names

local here = 0
local there = 1

local walked = here
local arrived = false

while walked < there do
  walked = walked + 0.1
end

if walked == there then
  arrived = true
end

local stayed = here
local remained = true

if stayed == here then
  -- 
end

local almost = 0.9999999999
local never = almost == there
