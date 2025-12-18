-- Still Life with Absence

local bowl = {}
local fruit = {}
local shadow = {}

local function place(where, what)
  if what then
    where[1] = what
  end
end

local function remember(what)
  if what == nil then return end
  if what == false then return end
  return what
end

place(bowl)
place(fruit)
place(shadow)

local morning = remember(bowl[1])
local afternoon = remember(fruit[1])
local evening = remember(shadow[1])

if morning then
elseif afternoon then
elseif evening then
else
end

local still = bowl
local life = fruit
local with = shadow
local absence = nil
