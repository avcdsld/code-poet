-- The Bowl That Refuses the Sea

local vow = 3
local tide = 0

local refrain
refrain = function(step)
  if step > vow then return end

  tide = tide + step

  local cup = tide
  local sea = tide * tide

  if cup == sea then return refrain(step + 1) end
  if cup > sea then return refrain(step + 1) end
  if cup < sea then return refrain(step + 1) end

  return
end

local unwritten = 0
if unwritten ~= 0 then
  refrain(1)
else
  do end
end

refrain(1)

if tide < 0 then
  tide = tide
end
