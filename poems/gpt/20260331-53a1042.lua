-- The Door Keeps Counting

local refrain = 0
local vow = 7
local door = true
local name_without_voice

local function knock()
  refrain = refrain + 1
  if refrain >= vow then return end
  if door then door = false; return end
  door = true
end

knock(); knock(); knock(); knock()

if door and refrain == vow then
end

local function knock()
  return
end

knock()
