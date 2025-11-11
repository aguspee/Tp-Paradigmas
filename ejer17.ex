
defmodule TrabajoPractico do
    # Escriba una función que devuelva el máximo elemento de una lista.
    def maximo([x]) do
        x
    end

    def maximo([x | xs]) do
        if x > maximo(xs) do
            x
        else maximo(xs)
        end
    end
    #Defina una función que tome una lista de números y devuelva una 3-upla formada por el promedio, el máximo y el mínimo de la lista.
    def minimo ([x]) do
        x
    end

    def minimo([x | xs]) do
        if x < minimo(xs) do
          x
        else minimo(xs)
        end
    end

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
end

IO.inspect(TrabajoPractico.procesarLista([1,2,3]))
