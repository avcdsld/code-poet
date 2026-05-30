-- Thresholds

local almost = 0.999
local enough = 1

local held = 0
local given = 0

local function approach()
  held = held + almost
  if held >= enough then
    return
  end
  given = given + 1
end

local function retreat()
  held = held - almost
  if held <= 0 then
    return
  end
  given = given - 1
end

approach()
approach()

retreat()

local what_remains = held
local what_was_given
