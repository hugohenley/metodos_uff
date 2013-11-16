class Bisseccao
  attr_reader :exp, :inicio, :fim, :precisao

  def initialize(inicio, fim, precisao)
    @inicio = inicio
    @fim = fim
    @precisao = precisao
  end

  def funcao(x)
    x**3 - 9*x + 3
  end

  def tem_raiz?
    if funcao(@inicio) * funcao(@fim) < 0
      true
    else
      false
    end
  end

end