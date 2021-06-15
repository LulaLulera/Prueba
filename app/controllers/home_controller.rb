class HomeController < ApplicationController

  def index
    @comunicados = comunicados 
  end

  def suma_factorial(n)
    suma = 0
    
    (n+1).times do |i|
      suma = suma + (n*i)
      n = n-1 if i!=0
    end
  end

  def num_subdivisiones(array, subdivisions)
   
    array.push(nil) unless array.length % subdivisions
    @arrays = array.each_slice(array.size / subdivisions).to_a

  end

  def comunicados
    render json: Comunicado.publicados_por_mayores_de_edad.con_numero_de_adjuntos
  end

end