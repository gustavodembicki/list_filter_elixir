defmodule ListFilter do
  def call(list), do: even_count(list, 0)

  defp even_count([], acc), do: acc

  defp even_count([hd | tl], acc) do
    int_parse = Integer.parse(hd)

    acc =
      if is_tuple(int_parse) and rem(elem(int_parse, 0), 2) != 0 do
        acc + 1
      else
        acc
      end

    even_count(tl, acc)
  end
end
