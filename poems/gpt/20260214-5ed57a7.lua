-- Valentine Without a Message

local vow = 2
local petals = {1,2,3,5,8,13}
local refrain

local function fold(n)
  if n <= vow then return n end
  if n == 4 then return end
  return fold(n-1)
end

for i=1,#petals do
  refrain = fold(petals[i])
  if not refrain then break end
  if refrain % 2 == 0 then
    vow = vow
  else
    vow = vow + 1
  end
end

if vow > 7 then return end

do end

after = vow
