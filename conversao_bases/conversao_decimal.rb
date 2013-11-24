class ConversaoDecimal
  attr_accessor :numero, :base

  CONVERSAO = {'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15, 'G' => 16,
               'H' => 17, 'I' => 18, 'J' => 19, 'K' => 20, 'L' => 21, 'M' => 22, 'N' => 23,
               'O' => 24, 'P' => 25, 'Q' => 26, 'R' => 27, 'S' => 28, 'T' => 29, 'U' => 30,
               'V' => 31, 'W' => 32, 'X' => 33, 'Y' => 34, 'Z' => 35}

  def initialize(numero, base)
    @numero = numero.to_s
    @base = base
  end

  def tem_parte_fracionaria?
    @numero.split('.').size == 2
  end

  def to_decimal
    if tem_parte_fracionaria?
      inteira = parte_inteira(@numero.split('.')[0])
      fracionaria = parte_fracionaria(@numero.split('.')[1])
      inteira + fracionaria
    else
      parte_inteira(@numero)
    end
  end

  def parte_inteira(numero)
    return 1 if numero == '1'
    indice_str = numero.to_s.size - 1
    indice = 0
    soma = 0
    while indice_str >= 0 do
      soma += ((converter_para_decimal(numero[indice_str])).to_i * (@base**indice))
      indice += 1
      indice_str -= 1
    end
    soma
  end

  def parte_fracionaria(numero)
    return 1 if numero == '1'
    indice_str = numero.to_s.size - 1
    indice = -1*numero.to_s.size
    soma = 0.0
    while indice_str >= 0 do
      soma += ((converter_para_decimal(numero[indice_str])).to_i * (@base**(indice)))
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