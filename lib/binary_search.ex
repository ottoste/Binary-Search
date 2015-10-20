defmodule BinarySearch do

  def search(list, target) do
    search(list, target, 0, length(list) - 1)
  end

  def search(_list, _target, min, max) when max < min do
    -1
  end

  def search(list, target, max, min) do
    mid = trunc(div(min + max, 2))
    cond do
      target < Enum.at(list, mid)  -> search(list, target, min, mid - 1)
      target > Enum.at(list, mid)  -> search(list, target, mid + 1, max)
      target == Enum.at(list, mid) -> mid
    end
  end
end

