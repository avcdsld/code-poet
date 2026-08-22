# Everything I Said To You

class Stranger
  def method_missing(*)
    self
  end
end

s = Stranger.new
s.hello
s.how.are.you
s.i.missed.you
s.are.you.listening
s.please
s.say.something
s.anything
s
