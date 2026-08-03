# Called Back
def f
  return
ensure
  f
end

f
