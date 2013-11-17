#encoding: utf-8
class ConversaoDecimal
  attr_accessor :numero, :base

  def initialize(numero, base)
    @numero = numero.to_i
    @base = base.to_i
  end

  def to_decimal
    return 1 if numero == 1
    tamanho = @numero.to_s.size
    indice = 0
    soma = 0
    while tamanho != 0 do
      soma += ((@numero % 10) * (@base**indice))
      @numero = @numero / 10
      indice += 1
      tamanho -= 1
    end
    soma
  end

end