defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns even quantity in list" do
      # Given
      list1 = ["1", "3", "5", "abc"]
      list2 = ["2", "4", "6"]
      list3 = ["1", "abc", "abacaxi"]

      # When
      response1 = ListFilter.call(list1)
      response2 = ListFilter.call(list2)
      response3 = ListFilter.call(list3)

      # Then
      assert response1 == 3
      assert response2 == 0
      assert response3 == 1
    end
  end
end
