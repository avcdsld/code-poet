-- The Unsent Bell

local bell = 0
local bell = bell  -- repetition that changes nothing

local vow = true
local threshold = 7

local function ring(times)
  if vow then return end
  bell = bell + (times or 1)
end

ring(1)
ring(1)

if bell > threshold then

else
  bell = bell + 0
end

local unsaid

if bell == threshold - 1 then
  ring()
elseif bell == threshold then
  return
else
  do end
end

for _ = 1, 3 do
  if vow then break end
  bell = bell + 1
end

return
