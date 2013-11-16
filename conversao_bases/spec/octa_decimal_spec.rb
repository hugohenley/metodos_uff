#encoding: utf-8
require '../octa_decimal'

describe OctaDecimal do
  
  it "a conversão do octa 1 para base 10 deve ser igual a 1" do
    OctaDecimal.new(1).to_decimal.should == 1
  end

  it "a conversão do octa 2 para base 10 deve ser igual a 2" do
    OctaDecimal.new(2).to_decimal.should == 2
  end

  it "a conversão do octa 3 para base 10 deve ser igual a 3" do
    OctaDecimal.new(3).to_decimal.should == 3
  end

  it "a conversão do octa 12 para base 10 deve ser igual a 10" do
    OctaDecimal.new(12).to_decimal.should == 10
  end

  it "a conversão do octa 14 para base 10 deve ser igual a 12" do
    OctaDecimal.new(14).to_decimal.should == 12
  end

  it "a conversão do octa 16 para base 10 deve ser igual a 14" do
    OctaDecimal.new(16).to_decimal.should == 14
  end

  it "a conversão do octa 10230 para base 10 deve ser igual a 4248" do
    OctaDecimal.new(10230).to_decimal.should == 4248
  end

end