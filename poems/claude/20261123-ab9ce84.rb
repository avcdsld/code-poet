# What You Left Behind

class Memory
  def method_missing(name, *)
    @lost ||= []
    @lost << name
    self
  end

  def inspect
    @lost.join(" ")
  end
end

Memory.new.your_voice.your_warmth.your_name
