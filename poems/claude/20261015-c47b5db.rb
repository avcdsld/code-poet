# What You Cannot Ask Of It

class Grief
  def method_missing(*)
    self
  end
end

Grief.new.are_you_still_here.after_all_this_time.will_you_ever.let_go
