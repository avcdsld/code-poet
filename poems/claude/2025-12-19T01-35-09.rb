# the year without arriving

class Winter
  def initialize
    @distance = 365
    @steps_taken = 0
  end

  def walk
    @steps_taken += 1
  end

  def remaining
    @distance - @steps_taken
  end

  def arrived?
    remaining <= 0
  end
end

class Traveler
  def initialize(winter)
    @winter = winter
    @promise = true
  end

  def keep_walking
    return if gave_up?

    @winter.walk
  end

  def gave_up?
    !@promise
  end

  def almost_there?
    @winter.remaining == 1
  end

  def the_last_step
    return unless almost_there?

    # here is where I would arrive
    # but the year ends first
  end
end

winter = Winter.new
traveler = Traveler.new(winter)

364.times do
  traveler.keep_walking
end

if traveler.almost_there?
  traveler.the_last_step
end

# one step remains
# one step always remains

unreachable = lambda do
  winter.walk
  winter.arrived?
end

# the distance never closes

def silence
end

silence
silence
silence

# and so the year ends
# with one step left to take

class Spring
  def initialize
    @distance = 365
  end
end

# spring is defined but never called
# winter is the only season here
