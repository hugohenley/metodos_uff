class HexaDecimal
  attr_accessor :hexa

  CONVERSAO = {'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15}

  def initialize(hexa)
    @hexa = hexa
  end

  def to_decimal
    return 1 if hexa == '1'
    indice_str = @hexa.to_s.size - 1
    indice = 0
    soma = 0
    while indice_str >= 0 do
      soma += ((converter_para_decimal(@hexa[indice_str])).to_iw * (16**indice))
      indice += 1
      indice_str -= 1
    end
    soma
  end

  private
  def converter_para_decimal(digito)
    if CONVERSAO[digito].nil?
      digito
    else
      CONVERSAO[digito]
    end
  end

end