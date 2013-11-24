#encoding: utf-8
require '../secante'

describe Secante do
  context "#calcular_raiz" do
    it "retorna 0.33760900519173764 caso inicio=0, fim=1, precisao=0.0005, grau=3 e coeficientes sejam [1, 0, -9, 3]" do
      Secante.new(0, 1, 0.0005, 3, [1, 0, -9, 3]).calcular_raiz.should == 0.33760895596578694
    end

    it "retorna 1.9999999 caso inicio=1.5, fim=1.7, precisao=2, grau=2 e coeficientes sejam [1, 1, -6]" do
      Secante.new(1.5, 1.7, 0.01, 2, [1, 1, -6]).calcular_raiz.should == 2.0000000072670723
    end


  end
end