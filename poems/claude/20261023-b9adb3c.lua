-- What It Means To Let Go

held = setmetatable({}, { __mode = "v" })

do
  local beloved = { warm = true }
  held[1] = beloved
end

collectgarbage()

if held[1] == nil then
  held[1] = {}
end
