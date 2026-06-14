# The leaving leaves
$a = 0

def b
  return 0
ensure
  $a = 1
end

b
