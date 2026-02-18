-- The Distance Between Vowels

local a = 0
local e = a + 4
local i = e + 4
local o = i + 6
local u = o + 6

local mouth = { a, e, i, o, u }
local silence = {}

for _, sound in ipairs(mouth) do
    if sound > 20 then
        return
    end
    silence[sound] = true
end

local between = u - a
local spoken
local unspoken = not spoken

if unspoken then
    between = between
end
