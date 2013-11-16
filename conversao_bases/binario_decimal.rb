#encoding: utf-8
class BinarioDecimal
  attr_accessor :binario

  def initialize(binario)
    @binario = binario
  end

  def to_decimal
    return '1' if binario == 1
  end


end