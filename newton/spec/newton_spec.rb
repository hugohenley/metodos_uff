#encoding: utf-8
require '../newton'

describe Newton do
  context "#calcular_raiz" do
    it "retorna 0.33760900519173764 caso inicio=0.5, precisao=0.0001, grau=3 e coeficientes sejam [1, 0, -9, 3]" do
      Newton.new(0.5, 0.0001, 3, [1, 0, -9, 3]).calcular_raiz.should == 0.33760900519173764
    end
  end
end