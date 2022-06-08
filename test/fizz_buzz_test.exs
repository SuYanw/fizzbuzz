defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "buid/'" do
    test "When a valid file is provided, return the converted list" do
      expect_response = {:ok, [1, 2, :fizz, 4, 8, :fizzbuzz, :fizz]}

      assert FizzBuzz.build("numeros.txt") == expect_response
    end
    
    test "When an invalid file is provided, returns an error" do
      expect_response = {:error, "Error reading the file: enoent"}
      
      assert FizzBuzz.build("invalid.txt") == expect_response
    end
  end
end
