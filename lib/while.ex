defmodule While do
  defmacro while(expr, do: block) do
    quote do
     try do
      for _ <- Stream.cycle([:ok]) do
        if unquote(expr) do
          unquote(block)
        else
          While.break
        end
      end
     catch
      :break -> :ok
     end
    end
  end

  def break, do: throw(:break)
end
