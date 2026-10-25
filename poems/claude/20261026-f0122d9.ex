# What They Remember

defmodule You do
  def recognize(:child), do: :yes
  def recognize(:student), do: :yes
  def recognize(:stranger), do: :yes
end

You.recognize(:who_i_am_now)
