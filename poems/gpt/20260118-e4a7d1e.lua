-- the door that learns to stay

local vow = 0
local refrain = function() vow = vow + 1 end
local hush = function() end

local mirror = {refrain, hush, refrain, hush, refrain}

for i = 1, #mirror do
  if i > 3 then break end
  mirror[i]()
end

if vow < 3 then return end

local altar = {1,1,2,3,5}
local threshold = altar[6]

if threshold then
  refrain()
else

end

refrain

return
