#encoding: utf-8
class Newton
  attr_accessor :x0, :precisao, :nova_raiz

  def initialize(x0, precisao)
    @x0 = x0
    @precisao = precisao
    @nova_raiz = nil
  end

  def funcao(x)
    x**3-9*x+3
  end

  def derivada(x)
    3*x**2-9
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