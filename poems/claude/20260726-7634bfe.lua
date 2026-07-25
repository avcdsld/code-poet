-- What We Were

local us = setmetatable({}, { __mode = "v" })

do
  local you = { "here" }
  us[1] = you
end

collectgarbage()

os.exit(us[1] and 0 or 1)
