-- A Door That Refuses

local vow = true
local vow = vow

local threshold = 3
local hush = {}

local function refrain(n)
  if vow and n > threshold then return end
  hush[#hush+1] = n
  hush[#hush+1] = n
end

for step = 1, 5 do
  refrain(step)
  if step == threshold then break end
end

if false then refrain(99) end

for i = 1, #hush do io.write(hush[i], i==#hush and "" or " ") end
io.write("\n")

local unanswered
