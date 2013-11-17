class DecimalOutra
  attr_accessor :decimal, :base

  CONVERSAO = {10 => 'A', 11 => 'B', 12 => 'C', 13 => 'D', 14 => 'E', 15 => 'F',
               16 => 'G', 17 => 'H', 18 => 'I', 19 => 'J', 20 => 'K', 21 => 'L',
               22 => 'M', 23 => 'N', 24 => 'O', 25 => 'P', 26 => 'Q', 27 => 'R',
               28 => 'S', 29 => 'T', 30 => 'U', 31 => 'V', 32 => 'W', 33 => 'X',
               34 => 'Y', 35 => 'Z'}

  def initialize(decimal, base)
    @decimal = decimal.to_i
    @base = base.to_i
  end

  def converter
    return "1" if @decimal == 1
    outra = []

    while (@decimal / @base) != 0
      outra << converter_decimal_alfa(@decimal % @base)
      @decimal = @decimal / @base
    end

    if @decimal / @base == 0
      outra << converter_decimal_alfa(@decimal % @base)
    end

    outra.reverse.join
  end

  private
  def converter_decimal_alfa(numero)
    numero.between?(10, 36) ? CONVERSAO[numero] : numero
  end

end