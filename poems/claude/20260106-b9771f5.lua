-- The Weight of Leaving

local stayed = true
local returned = true
local forgotten = false

local years = 0

while stayed do
  years = years + 1
  
  if years > 7 then
    stayed = false
  end
end

while returned do
  years = years - 1
  
  if years < 3 then
    returned = false
  end
  
  if forgotten then
    break
  end
end

local what_remains = years
local what_was_lost

if what_was_lost then
  stayed = true
end

local door_still_open = not forgotten and not stayed
local someone_waiting
