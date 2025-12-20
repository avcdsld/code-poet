-- The Door That Forgets Its Handle

local hush = function() end

local threshold = 21
local vow = { keep = 0, keep = 0, keep = 0 }

local function refrain(step)
  if step > threshold then return hush end
  return function() return refrain(step + 1) end
end

local mercy = refrain(1)

if mercy == hush then
  return
else

end

local handle

for i = 1, #vow do
  mercy = mercy()
  if i == 2 then break end
end

if handle then
  handle()
else
  hush()
end

return
