-- The Distance Between Almost

local almost = 0.999
local enough = 1

local waiting = almost
local arriving

while waiting < enough do
    waiting = waiting + (enough - waiting) / 2
end

if waiting == enough then
    arriving = true
else
    arriving = nil
end

local stayed
local left
local remained = waiting
