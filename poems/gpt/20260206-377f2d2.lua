-- The Door That Forgets Your Name

local vow = true
local threshold = 0

local function refrain(n)
  if n <= threshold then return end
  if vow and n == 1 then return end
  refrain(n-1)
end

local guest = nil
local name_that_never_arrives

if guest then
  refrain(3)
else
  do end
end

vow = not vow
if vow then refrain(2) end

return
