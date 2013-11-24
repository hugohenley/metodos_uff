#encoding: utf-8
class Secante
  attr_accessor :x0, :x1, :precisao, :novo_x, :grau, :coeficientes

  def initialize(x0, x1, precisao, grau, coeficientes)
    @x0 = x0.to_f
    @x1 = x1.to_f
    @precisao = precisao.to_f
    @novo_x = nil
    @grau = grau
    @coeficientes = coeficientes
  end

  def funcao(x)
    if @grau == 2
      @coeficientes[0]*x**2 + @coeficientes[1]*x + @coeficientes[2]
    elsif @grau == 3
      @coeficientes[0]*x**3 + @coeficientes[1]*x**2 + @coeficientes[2]*x + @coeficientes[3]
    end
  end

  def calcular_raiz
    @novo_x = (@x0*funcao(@x1) - @x1*funcao(@x0))/(funcao(@x1) - funcao(@x0))
    if criterio_parada(x1, x0)
      @novo_x
    else
      @x0 = @x1
      @x1 = @novo_x
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