# what you interrupted

defmodule Wait do
  def for(:you), do: :here
  def for(:nobody), do: for(:nobody)
end
