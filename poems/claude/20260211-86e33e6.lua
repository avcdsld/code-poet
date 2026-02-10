-- The Door That Does Not Open

local door = {
  locked = true,
  key = nil,
  waiting = true
}

local hand = {
  empty = true,
  reaching = true
}

local function try()
  if hand.empty then
    return
  end
  if door.locked then
    return
  end
  door.waiting = false
end

local function wait()
  while door.waiting do
    try()
    if door.waiting then
      break
    end
  end
end

wait()

door.waiting = true
