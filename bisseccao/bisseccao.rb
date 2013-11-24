#encoding: utf-8
class Bisseccao
  attr_reader :exp, :inicio, :fim, :precisao, :grau, :coeficientes

  def initialize(inicio, fim, precisao, grau, coeficientes)
    @inicio = inicio.to_f
    @fim = fim.to_f
    @precisao = precisao
    @grau = grau
    @coeficientes = coeficientes
  end

  def calcular_raiz
    raiz = nil
    while (@fim - @inicio) > precisao do
      if tem_raiz?(@inicio, @fim)
        #puts  "A raiz é #{(@inicio + @fim) / 2}"
        raiz = (@inicio + @fim) / 2
        if tem_raiz?(@inicio, raiz)
          @fim = raiz
        end
        if tem_raiz?(raiz, @fim)
          @inicio = raiz
        end
      else
        "Não há raiz no intervalo indicado"
      end
    end
    raiz
  end

  def funcao(x)
    if @grau == 2
      @coeficientes[0]*x**2 + @coeficientes[1]*x + @coeficientes[2]
    elsif @grau == 3
      @coeficientes[0]*x**3 + @coeficientes[1]*x**2 + @coeficientes[2]*x + @coeficientes[3]
    end
  end

  def tem_raiz?(inicio, fim)
    if funcao(inicio) * funcao(fim) < 0
      true
    else
      false
    end
  end
end