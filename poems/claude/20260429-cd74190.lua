-- Almost April

local april = 4
local today = 29

local function wait(day)
  if day < 30 then
    return wait(day + 1)
  end
end

local function arrive(month)
  if month ~= april then
    return
  end
  wait(today)
end

local may

arrive(april)
arrive(may)
