#encoding: utf-8
require '../lagrange'

describe Lagrange do
  context "#calcular_valor" do
    it "retorna -0.84 quando o ponto interpolado é o 2.3 e x = [-1, 0, 2] e y = [4, 1, -1]" do
      Lagrange.new(2.3, [-1, 0, 2], [4, 1, -1]).calcular_valor.should == -0.84
    end
    
    #f(x) = 3x + 2
    it "retorna 17 quando o ponto interpolado é o 5.0 e x = [1, 2, 3, 4] e y = [5, 8, 11, 14]" do
      Lagrange.new(5, [1, 2, 3, 4], [5, 8, 11, 14]).calcular_valor.should == 17.0
    end
    
    it "retorna 4.26 quando o ponto interpolado é o 1.45 e x = [1, 1.2, 1.4, 1.6] e y = [2.718, 3.320, 4.055, 4.953]" do
      Lagrange.new(1.45, [1, 1.2, 1.4, 1.6], [2.718, 3.320, 4.055, 4.953]).calcular_valor.should == 4.263046875000001
    end


    it "retorna 1.04 quando o ponto interpolado é o 13 e x = [10, 11, 12, 14, 15] e y = [2.69, 1.64, 1.09, 1.49, 2.44]" do
      Lagrange.new(13, [10, 11, 12, 14, 15], [2.69, 1.64, 1.09, 1.49, 2.44]).calcular_valor.should == 1.0400000000000003
    end

    it "retorna 0.99826 quando o ponto interpolado é o 30 e x = [20, 25, 35, 40, 45, 50] e y = [0.99907, 0.99852, 0.99818, 0.99828, 0.99849, 0.99878]" do
      Lagrange.new(30, [20, 25, 35, 40, 45, 50], [0.99907, 0.99852, 0.99818, 0.99828, 0.99849, 0.99878]).calcular_valor.should == 0.9982406666666666
    end

  end
end