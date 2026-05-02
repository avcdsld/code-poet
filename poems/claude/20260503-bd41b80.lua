-- After the Last Question

local silence = nil
local echo = silence

local function ask()
  return nil
end

local function wait()
  return wait
end

local answer = ask()

if answer then
  --
else
  echo = silence
end

local still = wait()
local still = wait()
local still = wait()

local unanswered = not answer and not echo and silence == nil

if unanswered then
  return
end
