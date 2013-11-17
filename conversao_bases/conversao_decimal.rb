class ConversaoDecimal
  attr_accessor :numero, :base

  CONVERSAO = {'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15, 'G' => 16,
               'H' => 17, 'I' => 18, 'J' => 19, 'K' => 20, 'L' => 21, 'M' => 22, 'N' => 23,
               'O' => 24, 'P' => 25, 'Q' => 26, 'R' => 27, 'S' => 28, 'T' => 29, 'U' => 30,
               'V' => 31, 'W' => 32, 'X' => 33, 'Y' => 34, 'Z' => 35}

  def initialize(numero, base)
    @numero = numero
    @base = base
  end

  def to_decimal
    return 1 if numero == '1'
    indice_str = @numero.to_s.size - 1
    indice = 0
    soma = 0
    while indice_str >= 0 do
      soma += ((converter_para_decimal(@numero[indice_str])).to_i * (@base**indice))
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