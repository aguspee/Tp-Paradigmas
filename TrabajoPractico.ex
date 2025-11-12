defmodule TrabajoPractico do
  # 16 Escriba una función que devuelva el mínimo elemento de una lista.
  def minimo(lista) do
    if tl(lista) == [] do
      hd(lista)
    else
      if hd(lista) < minimo(tl(lista)) do
        hd(lista)
      else
        minimo(tl(lista))
      end
    end
  end

  # 17 Escriba una función que devuelva el máximo elemento de una lista.
  def maximo(lista) do
    if tl(lista) == [] do
      hd(lista)
    else
      if hd(lista) > maximo(tl(lista)) do
        hd(lista)
      else
        maximo(tl(lista))
      end
    end
  end

  # 18 Defina una función que tome una lista de números y devuelva una 3-upla formada por el promedio, el máximo y el mínimo de la lista.
  def sumarLista(lista) do
    if lista == [] do
      0
    else
      hd(lista) + sumarLista(tl(lista))
    end
  end

  def cantidadElementos(lista) do
    if lista == [] do
      0
    else
      1 + cantidadElementos(tl(lista))
    end
  end

  def promedio(lista) do
    sumarLista(lista) / cantidadElementos(lista)
  end

  def procesarLista(lista) do
    {promedio(lista), maximo(lista), minimo(lista)}
  end

  # 28 Escriba una función que determine si una lista de {0,1}, donde cada 0 representa un paréntesis que abre y cada 1 un paréntesis que cierra, está balanceada (es decir, que cada 0 tiene su 1 correspondiente de acuerdo a las reglas que siguen los paréntesis). Ej: (001101) está balanceada y (1001010) no lo está.

  def parentesisBalanceados(lista, n) do
    if lista == [] do
      n == 0
    else
      if hd(lista) == 1 and n == 0 do
        false
      else
        if hd(lista) == 0 do
          parentesisBalanceados(tl(lista), n + 1)
        else
          parentesisBalanceados(tl(lista), n - 1)
        end
      end
    end
  end


#41 Defina una función llamada “Select” que devuelva la lista de elementos que cumplen con una determinada condición.

def select(lista, condicion) do
    if lista == [] do
        []
    else if condicion.(hd(lista)) do
        [hd(lista) | select(tl(lista), condicion)]
    else select(tl(lista), condicion)
    end
    end

end

#42 Defina una función llamada “Map” o “Collect” que devuelva la lista de los resultados de aplicar una función que se pasa como parámetro a cada elemento de la lista de entrada.

def map(lista, funcion)do
     if lista == [] do
        []
     else [funcion.(hd(lista)) | map(tl(lista), funcion)]
    end
end


end


IO.inspect(TrabajoPractico.procesarLista([1, 2, 3]))
IO.puts(TrabajoPractico.maximo([5, 7, 8, 4]))
IO.puts(TrabajoPractico.parentesisBalanceados([0, 0, 1, 1, 0, 1, 1], 0))
IO.inspect(TrabajoPractico.select([1,2,3,4,5], fn x -> rem(x,2) == 0 end))
IO.inspect(TrabajoPractico.map([1,2,3,4,5], fn x -> x*2 end))
