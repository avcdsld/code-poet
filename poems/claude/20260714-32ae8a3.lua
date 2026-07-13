-- what we cannot find in ourselves

local origin = { warmth = true }
local raised = {}
local grown = {}

setmetatable(raised, { __index = origin })
setmetatable(grown, { __index = raised })

local found = grown.warmth

origin.warmth = nil

local found_now = grown.warmth
