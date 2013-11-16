#encoding: utf-8
require '../bisseccao'

describe Bisseccao do
  context "#tem_raiz?" do
    it "retorna true caso o produto das imagens seja menor que 0" do
      Bisseccao.any_instance.stub(:funcao).and_return(-1, 1)
      Bisseccao.new(2, 3, 10^-3).tem_raiz?.should be_true
    end

    it "retorna false caso o produto das imagens seja maior que 0" do
      Bisseccao.any_instance.stub(:funcao).and_return(1, 1)
      Bisseccao.new(2, 3, 10^-3).tem_raiz?.should be_false
    end

  end

end