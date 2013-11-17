#encoding: utf-8
require '../decimal_outra'

describe DecimalOutra do

  it "a conversão do decimal 1 para base 2 deve ser igual a 1" do
    DecimalOutra.new(1, 2).converter.should == '1'
  end

  it "a conversão do decimal 10 para base 2 deve ser igual a 1010" do
    DecimalOutra.new(10, 2).converter.should == '1010'
  end

  it "a conversão do decimal 23 para base 2 deve ser igual a 10111" do
    DecimalOutra.new(23, 2).converter.should == '10111'
  end

  it "a conversão do decimal 42 para base 2 deve ser igual a 101010" do
    DecimalOutra.new(42, 2).converter.should == '101010'
  end

  it "a conversão do decimal 33 para base 2 deve ser igual a 100001" do
    DecimalOutra.new(33, 2).converter.should == '100001'
  end

  it "a conversão do decimal 91238 para base 2 deve ser igual a 10110010001100110" do
    DecimalOutra.new(91238, 2).converter.should == '10110010001100110'
  end

  it "a conversão do decimal 182381723 para base 2 deve ser igual a 1010110111101110110010011011" do
    DecimalOutra.new(182381723, 2).converter.should == '1010110111101110110010011011'
  end

  it "a conversão do decimal 410 para base 3 deve ser igual a 120012" do
    DecimalOutra.new(410, 3).converter.should == '120012'
  end

  it "a conversão do decimal 18923 para base 4 deve ser igual a 10213223" do
    DecimalOutra.new(18923, 4).converter.should == '10213223'
  end

  it "a conversão do decimal 19229 para base 5 deve ser igual a 1103404" do
    DecimalOutra.new(19229, 5).converter.should == '1103404'
  end

  it "a conversão do decimal 28938 para base 6 deve ser igual a 341550" do
    DecimalOutra.new(28938, 6).converter.should == '341550'
  end

  it "a conversão do decimal 12732 para base 7 deve ser igual a 52056" do
    DecimalOutra.new(12732, 7).converter.should == '52056'
  end

  it "a conversão do decimal 1 para base 8 deve ser igual a 1" do
    DecimalOutra.new(1, 8).converter.should == '1'
  end

  it "a conversão do decimal 10 para base 8 deve ser igual a 12" do
    DecimalOutra.new(10, 8).converter.should == '12'
  end

  it "a conversão do decimal 22 para base 8 deve ser igual a 26" do
    DecimalOutra.new(22, 8).converter.should == '26'
  end

  it "a conversão do decimal 41 para base 8 deve ser igual a 51" do
    DecimalOutra.new(41, 8).converter.should == '51'
  end

  it "a conversão do decimal 1985 para base 8 deve ser igual a 3701" do
    DecimalOutra.new(1985, 8).converter.should == '3701'
  end

  it "a conversão do decimal 10 para base 9 deve ser igual a 11" do
    DecimalOutra.new(10, 9).converter.should == '11'
  end

  it "a conversão do decimal 18238 para base 9 deve ser igual a 27014" do
    DecimalOutra.new(18238, 9).converter.should == '27014'
  end

end