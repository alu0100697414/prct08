class Matriz
  
  attr_accessor :filas, :columnas, :matriz
    
  def initialize(m)
    @filas=m.size
    @columnas=m[1].size
    @matriz = m
  end
  
  #Suma de matrices
  
  def + (other)
    i=0
      m_copia = @matriz
	while i < @filas
	  j=0
	  while j < @columnas
	    m_copia[i][j] = m_copia[i][j] + other.matriz[i][j]
	      j += 1
	  end
	  i += 1
	end
	Matriz.new(m_copia)
  end
  
  #Resta de matrices
  
  def - (other)
    i=0
      m_copia = @matriz
	while i < @filas
	  j=0
	    while j < @columnas
	      m_copia[i][j] = m_copia[i][j] - other.matriz[i][j]
	      j += 1
	    end
	    i += 1
	end
	Matriz.new(m_copia)
  end
  
end
