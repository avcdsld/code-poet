# What the River Refuses

river = []
stone = 0

def current(water)
  water.length
end

def still(depth)
  depth == 0
end

def flowing(depth)
  depth > 0
end

morning = true
evening = false

river << :droplet
river << :droplet
river << :droplet

stone = current(river)

if still(stone)
  # the river has forgotten
  exit
end

river << :silence

if flowing(stone)
  # it remembers
end

what_the_river_keeps = river.first
what_the_river_loses = river.last

if what_the_river_keeps == what_the_river_loses
  # sameness
else
  # difference
end

threshold = 7

river << :droplet
river << :droplet

if current(river) > threshold
  # overflow
  # but the river never reaches seven
end

morning = false
evening = true

refusal = lambda do |offering|
  return nil if offering == :stone
  offering
end

accepted = refusal.call(:droplet)
rejected = refusal.call(:stone)

if rejected.nil?
  # the river refuses stones
end

river << :dusk


if morning && evening
  # impossible day
  puts :paradox
end

final_depth = current(river)

if final_depth == stone
  # nothing changed
else
  # the river moved
end

unspoken = :gratitude

# what remains
