class DecimalOctal
  attr_accessor :decimal

  #Utiliza-se divisão sucessiva para encontrar o valor octal a partir o número decimal.
  #Dividimos sucessivamente o número 1985 até encontrarmos restos que sejam menores ou iguais a sete.

  def initialize(decimal)
    @decimal = decimal
  end

  def to_octal
    return "1" if @decimal == 1
    octal = []

    while (@decimal / 8) != 0
      octal << @decimal % 8
      @decimal = @decimal / 8
    end

    if @decimal / 8 == 0
      octal << @decimal % 8
    end

    octal.reverse.join
  end

end