#encoding: utf-8
require '../bisseccao'

describe Bisseccao do
  context "#tem_raiz?" do
    it "retorna true caso o produto das imagens seja menor que 0" do
      Bisseccao.any_instance.stub(:funcao).and_return(-1, 1)
      Bisseccao.new(2, 3, 10^-3, 2, [1, -9, 3]).tem_raiz?(-1, 1).should be_true
    end

    it "retorna false caso o produto das imagens seja maior que 0" do
      Bisseccao.any_instance.stub(:funcao).and_return(1, 1)
      Bisseccao.new(2, 3, 10^-3, 2, [1, -9, 3]).tem_raiz?(-1, 1).should be_false
    end
  end

  context "#calcular_raiz" do
    it "retorna 0.3369140625 caso inicio=0, fim=1, precisao=0.001, grau=3 e coeficientes sejam [1, 0, -9, 3]" do
      Bisseccao.new(0, 1, 0.001, 3, [1, 0, -9, 3]).calcular_raiz.should == 0.3369140625
    end
  end

end