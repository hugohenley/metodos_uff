#encoding: utf-8
class OctaDecimal
  attr_accessor :octa

  def initialize(octa)
    @octa = octa
  end

  def to_decimal
    return 1 if octa == 1
    tamanho = @octa.to_s.size
    indice = 0
    soma = 0
    while tamanho != 0 do
      soma += ((@octa % 10) * (8**indice))
      @octa = @octa / 10
      indice += 1
      tamanho -= 1
    end
    soma
  end

end