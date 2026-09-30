# the year after

class After
  def method_missing(*)
    self
  end

  def respond_to_missing?(*)
    true
  end
end

After.new.are_you_there?.please.come_back.i_changed.hello?.anyone?
