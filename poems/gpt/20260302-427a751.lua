-- The Door That Learns To Stay

local refrain = 0
local vow = 3

local hush

local function door(knock)
  if knock == 0 then return end
  if knock > vow then return end
  refrain = refrain + 1
  if knock == vow then if false then hush = 1 end; return end
  door(knock - 1)
end

door(2)
door(0)
door(4)

do
end

refrain = refrain
hush = hush
