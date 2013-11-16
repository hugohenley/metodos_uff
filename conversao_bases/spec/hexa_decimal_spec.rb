#encoding: utf-8
require '../hexa_decimal'

describe HexaDecimal do
  it "a conversão do hexa 1 para decimal deve ser igual a 1" do
    HexaDecimal.new('1').to_decimal.should == 1
  end

  it "a conversão do hexa 9 para decimal deve ser igual a 9" do
    HexaDecimal.new('9').to_decimal.should == 9
  end

  it "a conversão do hexa A para decimal deve ser igual a 10" do
    HexaDecimal.new('A').to_decimal.should == 10
  end

  it "a conversão do hexa B para decimal deve ser igual a 11" do
    HexaDecimal.new('B').to_decimal.should == 11
  end

  it "a conversão do hexa C para decimal deve ser igual a 12" do
    HexaDecimal.new('C').to_decimal.should == 12
  end

  it "a conversão do hexa D para decimal deve ser igual a 13" do
    HexaDecimal.new('D').to_decimal.should == 13
  end

  it "a conversão do hexa E para decimal deve ser igual a 14" do
    HexaDecimal.new('E').to_decimal.should == 14
  end

  it "a conversão do hexa F para decimal deve ser igual a 15" do
    HexaDecimal.new('F').to_decimal.should == 15
  end

  it "a conversão do hexa E6 para decimal deve ser igual a 230" do
    HexaDecimal.new('E6').to_decimal.should == 230
  end

  it "a conversão do hexa 156 para decimal deve ser igual a 342" do
    HexaDecimal.new('156').to_decimal.should == 342
  end

  it "a conversão do hexa 7C1 para decimal deve ser igual a 1985" do
    HexaDecimal.new('7C1').to_decimal.should == 1985
  end

  it "a conversão do hexa 3120E para decimal deve ser igual a 201230" do
    HexaDecimal.new('3120E').to_decimal.should == 201230
  end

  it "a conversão do hexa 1EB48D para decimal deve ser igual a 2012301" do
    HexaDecimal.new('1EB48D').to_decimal.should == 2012301
  end

  it "a conversão do hexa 1330D84 para decimal deve ser igual a 20123012" do
    HexaDecimal.new('1330D84').to_decimal.should == 20123012
  end

  it "a conversão do hexa BFE872B para decimal deve ser igual a 201230123" do
    HexaDecimal.new('BFE872B').to_decimal.should == 201230123
  end

  it "a conversão do hexa 77F147B2 para decimal deve ser igual a 2012301234" do
    HexaDecimal.new('77F147B2').to_decimal.should == 2012301234
  end

end