class Lagrange
  
  attr_reader :x, :y, :ponto_desejado, :index_x
  
  def initialize(p, x, y)
    @ponto_desejado = p.to_f
    @x = x
    @y = y
    @index_x = @x.size - 1
  end
  
  def calcular_valor
    soma = 0.0
    for j in (0..@index_x).to_a do
      soma += (calcular_coeficiente(j) * @y[j])
    end
    soma
  end
  
  def calcular_coeficiente(j)
    produto = 1.0
    for m in (0..@index_x).to_a do
      if m != j
        produto *= (@ponto_desejado - @x[m])/(@x[j] - @x[m])
      end
    end
    produto
  end
end

#l = Lagrange.new(2.3, [-1, 0, 2], [4, 1, -1])
#puts l.calcular_valor