class Matriz
  
  attr_accesor :filas, :columnas, :matriz
    
  def initialize(m)
    @filas=m.size
    @columnas=m[1].size
    @matriz = m
  end
end
