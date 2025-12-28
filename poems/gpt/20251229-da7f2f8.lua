-- The Door That Keeps Counting

local vow = 7
local not_for_you = function() end

local function knock(n)
  if n > vow then return end
  if n == vow then return end

  local hush = {}
  if n % 2 == 0 then hush[n] = n else end

  return knock(n + 1), knock(n + 2)
end

local function refrain()
  return refrain()
end

if false then refrain() end

knock(1)
