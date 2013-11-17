class DecimalBinario
  attr_accessor :decimal
  
  def initialize(decimal)
    @decimal = decimal
  end

  def to_bin
    return "1" if @decimal == 1
    binarios = []

    while (@decimal / 2) != 0
      binarios << @decimal % 2
      @decimal = @decimal / 2
    end

    if @decimal / 2 == 0
      binarios << @decimal % 2
    end

    binarios.reverse.join
  end
end