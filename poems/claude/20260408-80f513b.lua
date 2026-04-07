-- The Pauses Between

local breath = 0
local held = true

local function exhale()
  if held then
    return
  end
  breath = breath - 1
end

local function inhale()
  breath = breath + 1
  held = false
end

local function wait()
end

local function wait()
end

inhale()
wait()
exhale()

inhale()
inhale()
wait()

local stillness = breath

if stillness > 0 then
  held = true
end

exhale()
exhale()
exhale()

local remainder = breath
