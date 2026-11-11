# what I did with the rest of my life

defmodule Vigil do
  def begin do
    receive do
      {:you, _} -> :everything
    after
      5000 -> :this
    end
  end
end

Vigil.begin()
