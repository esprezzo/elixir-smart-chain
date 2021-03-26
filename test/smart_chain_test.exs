
defmodule SmartChainTest do
  use ExUnit.Case
  require IEx

  doctest SmartChain

  # TODO: cover all non-network features
  describe "hexutils module" do

    test "to_hex/1 works on integer" do
      assert SmartChain.to_hex(1440002) == "0x15f902"
    end

  end
  
end
