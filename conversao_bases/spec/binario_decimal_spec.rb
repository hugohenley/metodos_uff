#encoding: utf-8
require '../binario_decimal'

describe BinarioDecimal do
  it "a conversão do binario 1 para base 10 deve ser igual a 1" do
    BinarioDecimal.new(1).to_decimal.should == 1
  end

  it "a conversão do binario 10 para base 10 deve ser igual a 2" do
    BinarioDecimal.new(10).to_decimal.should == 2
  end

  it "a conversão do binario 11 para base 10 deve ser igual a 3" do
    BinarioDecimal.new(11).to_decimal.should == 3
  end

  it "a conversão do binario 101 para base 10 deve ser igual a 5" do
    BinarioDecimal.new(101).to_decimal.should == 5
  end

  it "a conversão do binario 100101 para base 10 deve ser igual a 37" do
    BinarioDecimal.new(100101).to_decimal.should == 37
  end

  it "a conversão do binario 1011010001010101 para base 10 deve ser igual a 46165" do
    BinarioDecimal.new(1011010001010101).to_decimal.should == 46165
  end

end