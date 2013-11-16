#encoding: utf-8
class Bisseccao
  attr_reader :exp, :inicio, :fim, :precisao

  def initialize(inicio, fim, precisao)
    @inicio = inicio.to_f
    @fim = fim.to_f
    @precisao = precisao
  end

  def calcular_raiz
    raiz = nil
    puts "============="
    puts "Fim - Inicio: #{@fim - @inicio}"
    puts "Precisão: #{precisao}"
    puts "Fim - Inicio > Precisao? #{(@fim - @inicio) > precisao}"
    puts "============="
    while (@fim - @inicio) > precisao do
      if tem_raiz?(@inicio, @fim)
        puts "(1)"
        puts "Tem raiz aqui! (1)"
        puts  "A raiz é #{(@inicio + @fim) / 2}"
        raiz = (@inicio + @fim) / 2
#        puts "Nova raiz: #{raiz}"
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
    x**3 - 9*x + 3
  end

  def tem_raiz?(inicio, fim)
    if funcao(inicio) * funcao(fim) < 0
      true
    else
      false
    end
  end
end