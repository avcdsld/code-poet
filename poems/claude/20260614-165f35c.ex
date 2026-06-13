# Who You Were To Those Who Knew You

self = :who_i_was

child = spawn(fn ->
  Process.sleep(:infinity)
  self
end)

self = :who_i_became

self = :who_i_became_after_that

Process.info(child)
