-- What I Couldn't Find In Myself

mother = { strength = true, silence = true, grief = true }
child = {}
setmetatable(child, { __index = mother })

_ = child.strength
_ = child.silence
_ = child.grief
_ = child.joy
