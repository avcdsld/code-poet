-- Almost April

local march = 31
local april = 1

local waiting = true
local arrived = false

while waiting do
  march = march - 1
  if march < 1 then
    waiting = nil
  end
end

if arrived then
  april = april + 1
end

local spring
local _

if march == 0 and not arrived then
  _ = spring
end
