# What We Cannot Name, We Hold

class Listener
  def method_missing(*, **)
    self
  end
end

Listener.new.are.you.still.there
