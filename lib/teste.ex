defmodule Teste do
    import While

    def teste do
        x = 1
        while x <= 5 do
            x = 1
            IO.puts "cinco!!"
            x + 1
        end
    end

end
