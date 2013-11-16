#encoding: utf-8
require '../decimal_hexa'

describe DecimalHexa do
  it "a conversão do decimal 1 para hexa deve ser igual a 1" do
    DecimalHexa.new(1).to_hex.should == '1'
  end

  it "a conversão do decimal 9 para hexa deve ser igual a 9" do
    DecimalHexa.new(9).to_hex.should == '9'
  end

  it "a conversão do decimal 10 para hexa deve ser igual a A" do
    DecimalHexa.new(10).to_hex.should == 'A'
  end

  it "a conversão do decimal 11 para hexa deve ser igual a B" do
    DecimalHexa.new(11).to_hex.should == 'B'
  end

  it "a conversão do decimal 12 para hexa deve ser igual a C" do
    DecimalHexa.new(12).to_hex.should == 'C'
  end

  it "a conversão do decimal 13 para hexa deve ser igual a D" do
    DecimalHexa.new(13).to_hex.should == 'D'
  end

  it "a conversão do decimal 14 para hexa deve ser igual a E" do
    DecimalHexa.new(14).to_hex.should == 'E'
  end

  it "a conversão do decimal 15 para hexa deve ser igual a F" do
    DecimalHexa.new(15).to_hex.should == 'F'
  end

  it "a conversão do decimal 230 para hexa deve ser igual a E6" do
    DecimalHexa.new(230).to_hex.should == 'E6'
  end

  it "a conversão do decimal 342 para hexa deve ser igual a 156" do
    DecimalHexa.new(342).to_hex.should == '156'
  end

  it "a conversão do decimal 1985 para hexa deve ser igual a 7C1" do
    DecimalHexa.new(1985).to_hex.should == '7C1'
  end

  it "a conversão do decimal 201230 para hexa deve ser igual a 3120E" do
    DecimalHexa.new(201230).to_hex.should == '3120E'
  end

  it "a conversão do decimal 2012301 para hexa deve ser igual a 1EB48D" do
    DecimalHexa.new(2012301).to_hex.should == '1EB48D'
  end

  it "a conversão do decimal 20123012 para hexa deve ser igual a 1330D84" do
    DecimalHexa.new(20123012).to_hex.should == '1330D84'
  end

  it "a conversão do decimal 201230123 para hexa deve ser igual a BFE872B" do
    DecimalHexa.new(201230123).to_hex.should == 'BFE872B'
  end

  it "a conversão do decimal 2012301234 para hexa deve ser igual a 77F147B2" do
    DecimalHexa.new(2012301234).to_hex.should == '77F147B2'
  end

end