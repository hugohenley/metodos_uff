#encoding: utf-8
require '../decimal_binario'

describe DecimalBinario do
  it "a conversão do decimal 10 para base 2 deve ser igual a 1010" do
    DecimalBinario.new(10).to_bin.should == '1010'
  end
  
  it "a conversão do decimal 23 para base 2 deve ser igual a 10111" do
    DecimalBinario.new(23).to_bin.should == '10111'
  end
  
  it "a conversão do decimal 42 para base 2 deve ser igual a 101010" do
    DecimalBinario.new(42).to_bin.should == '101010'
  end
  
  it "a conversão do decimal 33 para base 2 deve ser igual a 100001" do
    DecimalBinario.new(33).to_bin.should == '100001'
  end
  
  it "a conversão do decimal 91238 para base 2 deve ser igual a " do
    DecimalBinario.new(91238).to_bin.should == '10110010001100110'
  end
  
  it "a conversão do decimal 182381723 para base 2 deve ser igual a " do
    DecimalBinario.new(182381723).to_bin.should == '1010110111101110110010011011'
  end
end