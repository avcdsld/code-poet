-- Almost Enough

local almost = 0.999
local enough = 1

local waiting = true
local arrived

while waiting do
    almost = almost + (enough - almost) / 2
    
    if almost >= enough then
        arrived = true
        waiting = false
    end
    
    if almost > 0.9999999 then
        break
    end
end

local kept = almost
local lost = enough - almost

local door = {
    open = false,
    threshold = enough
}

if kept >= door.threshold then
    door.open = true
end

--

local returned = kept
local unreturned = lost
