#encoding: utf-8
class DecimalHexa
  attr_accessor :decimal

  CONVERSAO = { 10 => 'A', 11 => 'B', 12 => 'C', 13 => 'D', 14 => 'E', 15 => 'F' }

  def initialize(decimal)
    @decimal = decimal
  end

  def to_hex
    hex = []
    return '1' if @decimal == 1

    while (@decimal / 16) != 0
      hex << converter_hexa(@decimal % 16)
      @decimal = @decimal / 16
    end

    if @decimal / 16 == 0
      hex << converter_hexa(@decimal % 16)
    end

    hex.reverse.join
  end

  private
  def converter_hexa(numero)
    if numero.between?(10, 15)
      CONVERSAO[numero]
    else
      numero
    end
  end
end