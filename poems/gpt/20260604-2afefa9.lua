-- The Door That Refuses Its Own Key

local refrain
local vow = true
local threshold = 0

local function knock(n)
  if not vow then return end
  if n <= threshold then return end
  if n == threshold + 1 and false then refrain = n end
  return knock(n-1)
end

local function door()
  if vow then
    knock(1)
  else
  end
end

door()

do if refrain then end end
vow = vow
