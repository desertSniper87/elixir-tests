defmodule Caesar.Cipher do
  require Logger
  @alphabet_size 26

  @moduledoc """
  GUGU GAGA
  KAESAR SIPHER
  """

  @doc """
  BUBU BABA
  ENKRIPT
  """

  def encrypt(msg, shift) do
    Logger.debug("Enc -> #{msg} -> #{shift}")

    msg
    |> to_charlist()
    |> Enum.map(&shift_char(&1, shift))
    |> List.to_string()
  end

  def shift_char(char, shift) do
    case char do
      chr when chr in ?a..?z -> calculate_mapping(?a, chr, shift)
      chr when chr in ?A..?Z -> calculate_mapping(?A, chr, shift)
      chr -> chr
    end
  end

  def calculate_mapping(base_letter, char, shift) do
    normalize = &(&1 - @alphabet_size)
    shift_num = rem(shift, @alphabet_size)
    base_letter + rem(char - normalize.(base_letter) - shift_num, 26)
  end
end
