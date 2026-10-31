# everything I say comes back as myself

class Listener
  def method_missing(*)
    self
  end
end

Listener.new.please.stay.please.stay.please.stay.please.stay
