defmodule Caesar.CipherTest do
  use ExUnit.Case
  doctest Caesar.Cipher

  import Caesar.Cipher

  test "Caesar Encryption small letter" do
    assert encrypt("abcd", 1) == "zabc"
  end

  test "Caesar Encryption space" do
    assert encrypt("ab cd", 1) == "za bc"
  end

  test "Caesar Encryption capital letter" do
    assert encrypt("ABCD", 1) == "ZABC"
  end

  test "Caesar Encryption mixed" do
    assert encrypt("abCD", 1) == "zaBC"
  end
end
