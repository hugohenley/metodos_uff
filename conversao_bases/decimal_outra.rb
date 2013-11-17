class DecimalOutra
  attr_accessor :decimal, :base

  def initialize(decimal, base)
    @decimal = decimal
    @base = base
  end

  def converter
    return "1" if @decimal == 1
    outra = []

    while (@decimal / @base) != 0
      outra << @decimal % @base
      @decimal = @decimal / @base
    end

    if @decimal / @base == 0
      outra << @decimal % @base
    end

    outra.reverse.join
  end

end