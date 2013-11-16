class DecimalBinario
  attr_accessor :decimal
  
  def initialize(decimal)
    @decimal = decimal
  end
  
  def to_bin
    binarios = []
    return '1' if @decimal == 1
    
    while (@decimal / 2) != 1 do
      binarios << @decimal % 2
      @decimal = (@decimal / 2)
    end
    
    if (decimal / 2) == 1
      binarios << decimal % 2
      binarios << decimal / 2 
    end
    
    binarios.reverse.join
  end
end