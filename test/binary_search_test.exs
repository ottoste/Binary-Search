defmodule BinarySearchTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  
  test "find the position in list" do
  	assert BinarySearch.search([1,2,3,4,5], 3) == 2
  end

  test "when target is not in list -1" do
  	assert BinarySearch.search([1,2,3,4,5], 7) == -1
  end
end
