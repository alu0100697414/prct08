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
  
  def -(other)
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
  


  #Multiplicacion de matrices

  def * (other)
    i=0
      m_copia = Array.new(@filas) {Array.new(other.columnas,0)}
      while i < @filas
	    j = 0
	      while j < other.columnas
		  m_copia[i][j] = 0
		  k = 0
		    while k < @columnas
		      m_copia[i][j] = m_copia[i][j] + (matriz[i][k] * other.matriz[k][j])
		      k += 1
		    end
		    j +=1
	      end
	      i +=1
      end
      Matriz.new(m_copia)
  end
end  
