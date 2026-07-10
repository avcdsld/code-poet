# Afterward
def a
  return nil
ensure
  $b = true
end

a
$b
