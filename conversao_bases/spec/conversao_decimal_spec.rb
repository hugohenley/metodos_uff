#encoding: utf-8
require '../conversao_decimal'

describe ConversaoDecimal do
  it "a conversão do numero 1010 na base 2 para decimal deve ser igual a 10" do
    ConversaoDecimal.new(1010, 2).to_decimal.should == 10
  end

  it "a conversão do numero 1 na base 3 para decimal deve ser igual a 1" do
    ConversaoDecimal.new(1, 3).to_decimal.should == 1
  end

  it "a conversão do numero 2 na base 3 para decimal deve ser igual a 2" do
    ConversaoDecimal.new(2, 3).to_decimal.should == 2
  end

  it "a conversão do numero 20 na base 3 para decimal deve ser igual a 6" do
    ConversaoDecimal.new(20, 3).to_decimal.should == 6
  end

  it "a conversão do numero 20 na base 4 para decimal deve ser igual a 8" do
    ConversaoDecimal.new(20, 4).to_decimal.should == 8
  end

  it "a conversão do numero 2321 na base 5 para decimal deve ser igual a 336" do
    ConversaoDecimal.new(2321, 5).to_decimal.should == 336
  end

  it "a conversão do numero 123 na base 6 para decimal deve ser igual a 51" do
    ConversaoDecimal.new(123, 6).to_decimal.should == 51
  end

  it "a conversão do numero 232 na base 7 para decimal deve ser igual a 121" do
    ConversaoDecimal.new(232, 7).to_decimal.should == 121
  end

  it "a conversão do numero 432 na base 8 para decimal deve ser igual a 282" do
    ConversaoDecimal.new(432, 8).to_decimal.should == 282
  end

  it "a conversão do numero 14 na base 9 para decimal deve ser igual a 13" do
    ConversaoDecimal.new(14, 9).to_decimal.should == 13
  end

  it "a conversão do numero 14 na base 10 para decimal deve ser igual a 14" do
    ConversaoDecimal.new(14, 10).to_decimal.should == 14
  end

  it "a conversão do numero 1230 na base 12 para decimal deve ser igual a 2052" do
    ConversaoDecimal.new(1230, 12).to_decimal.should == 2052
  end

  it "a conversão do numero 123 na base 36 para decimal deve ser igual a 1371" do
    ConversaoDecimal.new(123, 36).to_decimal.should == 1371
  end


end