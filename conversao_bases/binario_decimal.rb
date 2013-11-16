#encoding: utf-8
class BinarioDecimal
  attr_accessor :binario

  def initialize(binario)
    @binario = binario
  end

  def to_decimal
    return 1 if binario == 1
    tamanho = @binario.to_s.size
    indice = 0
    soma = 0
    while tamanho != 0 do
      soma += ((@binario % 10) * (2**indice))
      @binario = @binario / 10
      indice += 1
      tamanho -= 1
    end
    soma
  end

end