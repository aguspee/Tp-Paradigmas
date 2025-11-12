
defmodule TrabajoPractico do
    #Escriba una función que devuelva el mínimo elemento de una lista.
    def minimo(lista) do
        if tl(lista) == [] do
            hd(lista)
        else
            if hd(lista) < minimo(tl(lista)) do
                hd(lista)
            else minimo(tl(lista))
            end
        end
    end
    # Escriba una función que devuelva el máximo elemento de una lista.
    def maximo(lista) do
        if tl(lista) == [] do
            hd(lista)
        else
            if hd(lista) > maximo(tl(lista)) do
                hd(lista)
            else maximo(tl(lista))
            end
        end
    end


    #Defina una función que tome una lista de números y devuelva una 3-upla formada por el promedio, el máximo y el mínimo de la lista.
    def sumarLista(lista) do
        if lista == [] do
            0
        else hd(lista) + sumarLista(tl(lista))
        end
    end

    def cantidadElementos(lista) do
      if lista == [] do
        0
      else 1 + cantidadElementos(tl(lista))
      end
    end

    def promedio(lista) do
        if lista ==[] do
            0
        else sumarLista(lista)/cantidadElementos(lista)
        end
    end

    def procesarLista(lista) do
        {promedio(lista), maximo(lista), minimo(lista)}
    end
    #Escriba una función que determine si una lista de {0,1}, donde cada 0 representa un paréntesis que abre y cada 1 un paréntesis que cierra, está balanceada (es decir, que cada 0 tiene su 1 correspondiente de acuerdo a las reglas que siguen los paréntesis). Ej: (001101) está balanceada y (1001010) no lo está.
end

IO.inspect(TrabajoPractico.procesarLista([1,2,3]))
IO.puts(TrabajoPractico.maximo([5,7,8,4]))
