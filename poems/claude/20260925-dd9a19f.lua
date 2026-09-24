-- what was never given

parent = {}
child = setmetatable({}, {__index = parent})

_ = child.love
_ = child.approval
_ = child.enough

grandchild = setmetatable({}, {__index = child})

_ = grandchild.love
_ = grandchild.approval
_ = grandchild.enough
