#encoding: utf-8
class Secante
  attr_accessor :x0, :x1, :precisao, :novo_x

  def initialize(x1, x0, precisao)
    @x0 = x0.to_f
    @x1 = x1.to_f
    @precisao = precisao.to_f
    @novo_x = nil
  end

  def funcao(x)
    x**3-9*x+3
  end

  def calcular_raiz
    if criterio_parada(@x1, @x0)
      @x1
    else
      @novo_x = (@x0*funcao(@x1) - @x1*funcao(@x0))/(funcao(@x1) - funcao(@x0))
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