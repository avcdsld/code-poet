-- The Distance Between Doors

local door = {}
local other_door = {}

function door.open()
  return other_door.closed()
end

function door.closed()
  return
end

function other_door.open()
  return door.closed()
end

function other_door.closed()
  return door.open()
end

local here = door
local there = other_door

if here == there then
  door.open()
end

local between = nil
