#encoding: utf-8
class Newton
  attr_accessor :x0, :precisao, :nova_raiz, :grau, :coeficientes

  def initialize(x0, precisao, grau, coeficientes)
    @x0 = x0
    @precisao = precisao
    @nova_raiz = nil
    @grau = grau
    @coeficientes = coeficientes
  end

  def funcao(x)
    #x**3-9*x+3
    if @grau == 2
      @coeficientes[0]*x**2 + @coeficientes[1]*x + @coeficientes[2]
    elsif @grau == 3
      @coeficientes[0]*x**3 + @coeficientes[1]*x**2 + @coeficientes[2]*x + @coeficientes[3]
    end
  end

  def derivada(x)
    #3*x**2-9
    #axˆ2 + bx + c
    #2*ax + b
    #ax^3 + bx^2 + cx + d
    if @grau == 2
      2*@coeficientes[0]*x + @coeficientes[1]
    elsif @grau == 3
      3*@coeficientes[0]*x**2 + 2*@coeficientes[1]*x + @coeficientes[2]
    end
  end

  def calcular_raiz
    @nova_raiz = @x0 - (funcao(@x0)/derivada(@x0))
    if criterio_parada(@nova_raiz, @x0)
      @nova_raiz
    else
      @x0 = @nova_raiz
      calcular_raiz
    end
  end

  def criterio_parada(x, x_anterior)
    if primeiro_criterio(x, x_anterior) && segundo_criterio(x)
      true
    else
      false
    end
  end

  def primeiro_criterio(x, x_anterior)
    ((x - x_anterior).abs) / (x.abs) <= precisao
  end

  def segundo_criterio(x)
    (funcao(x).abs) <= precisao
  end
end

#n = Newton.new(0.5, 0.0001)
#puts n.calcular_raiz
