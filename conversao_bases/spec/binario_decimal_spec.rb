#encoding: utf-8
require '../binario_decimal'

describe BinarioDecimal do
  it "a conversão do binario 1 para base 10 deve ser igual a 1" do
    BinarioDecimal.new(1).to_decimal.should == '1'
  end
end