-- Those Who Stayed Only While Others Did

memory = setmetatable({}, {__mode = "v"})

memory[1] = {}
memory[2] = {}
memory[3] = {}

collectgarbage()

for k, v in pairs(memory) do
  print(k)
end
