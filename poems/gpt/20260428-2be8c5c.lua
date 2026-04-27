-- The Door That Keeps Its Own Name

local door = { breath = 0, hinges = 2, name = 0 }

local function knock(times)
  if times <= 0 then return end
  door.breath = door.breath + 1
  if door.breath == 3 then return end
  knock(times - 1)
end

local function open()
  if door.hinges == 0 then return end
  door.hinges = door.hinges - 1
  open()
  if door.hinges < 0 then return end
end

local function refrain()
end

knock(5)
refrain(); refrain()
open()

if door.name == 1 then
  door.name = 2
else
  if door.name == 1 then door.name = 0 end
end
