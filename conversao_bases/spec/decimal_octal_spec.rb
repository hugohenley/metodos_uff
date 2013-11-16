#encoding: utf-8
require '../decimal_octal'

describe DecimalOctal do
  it "a conversão do decimal 1 para base 8 deve ser igual a 1" do
    DecimalOctal.new(1).to_octal.should == '1'
  end

  it "a conversão do decimal 10 para base 8 deve ser igual a 12" do
    DecimalOctal.new(10).to_octal.should == '12'
  end

  it "a conversão do decimal 22 para base 8 deve ser igual a 26" do
    DecimalOctal.new(22).to_octal.should == '26'
  end

  it "a conversão do decimal 41 para base 8 deve ser igual a 51" do
    DecimalOctal.new(41).to_octal.should == '51'
  end

  it "a conversão do decimal 41 para base 8 deve ser igual a 51" do
    DecimalOctal.new(1985).to_octal.should == '3701'
  end
end