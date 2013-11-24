class DecimalOutra
  attr_accessor :decimal, :base, :fracionaria

  CONVERSAO = {10 => 'A', 11 => 'B', 12 => 'C', 13 => 'D', 14 => 'E', 15 => 'F',
               16 => 'G', 17 => 'H', 18 => 'I', 19 => 'J', 20 => 'K', 21 => 'L',
               22 => 'M', 23 => 'N', 24 => 'O', 25 => 'P', 26 => 'Q', 27 => 'R',
               28 => 'S', 29 => 'T', 30 => 'U', 31 => 'V', 32 => 'W', 33 => 'X',
               34 => 'Y', 35 => 'Z'}

  def initialize(decimal, base)
    @decimal = decimal
    @base = base
    @fracionaria = nil
  end

  def tem_parte_fracionaria?
    @decimal.to_s.split('.').size == 2
  end

  def converter
    if tem_parte_fracionaria?
      inteira = parte_inteira(@decimal.to_s.split('.')[0].to_i)
      fracao = @decimal.to_s.split('.')[1]
      fracionaria = parte_fracionaria(fracao.to_f*10**(-1*fracao.size))
      inteira.to_s + '.' + fracionaria.to_s
    else
      parte_inteira(@decimal)
    end
  end

  def parte_inteira(decimal)
    return "1" if decimal == 1
    outra = []

    while (decimal / @base) != 0
      outra << converter_decimal_alfa(decimal % @base)
      decimal = decimal / @base
    end

    if decimal / @base == 0
      outra << converter_decimal_alfa(decimal % @base)
    end

    outra.reverse.join
  end

  def parte_fracionaria(decimal)
    numero = decimal
    parte_inteira = []

    while !parte_fracionaria_nula?
      parte_inteira << converter_decimal_alfa((numero * @base).to_i)
      @fracionaria =  converter_decimal_alfa((numero * @base).to_f - (numero * @base).to_i)
      numero = @fracionaria
    end
    parte_inteira.join
  end

  def parte_fracionaria_nula?
    @fracionaria == 0
  end

  private
  def converter_decimal_alfa(numero)
    numero.between?(10, 36) ? CONVERSAO[numero] : numero
  end

end