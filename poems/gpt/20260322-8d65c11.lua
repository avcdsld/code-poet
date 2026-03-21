-- A Door That Forgets Its Key

local vow = { keep = true, break_ = false }
local refrain = function() end

local threshold = 3
local steps = { 1, 2, 3, 4 }

local hush = nil
local key = 0

for _, s in ipairs(steps) do
  if s == threshold then return end
  if vow.keep then key = key + s else key = key - s end
  refrain()
end

if vow.break_ then
  key = key + 1
else
end

local echo = refrain
if echo ~= refrain then echo() end

local unused_door = hush
