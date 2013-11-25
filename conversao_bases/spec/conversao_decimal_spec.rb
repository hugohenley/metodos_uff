#encoding: utf-8
require '../conversao_decimal'

describe ConversaoDecimal do
  context "inteiros" do
    it "a conversão do numero 1010 na base 2 para decimal deve ser igual a 10" do
      ConversaoDecimal.new('1010', 2).to_decimal.should == 10
    end

    it "a conversão do numero 1 na base 3 para decimal deve ser igual a 1" do
      ConversaoDecimal.new('1', 3).to_decimal.should == 1
    end

    it "a conversão do numero 2 na base 3 para decimal deve ser igual a 2" do
      ConversaoDecimal.new('2', 3).to_decimal.should == 2
    end

    it "a conversão do numero 20 na base 3 para decimal deve ser igual a 6" do
      ConversaoDecimal.new('20', 3).to_decimal.should == 6
    end

    it "a conversão do numero 20 na base 4 para decimal deve ser igual a 8" do
      ConversaoDecimal.new('20', 4).to_decimal.should == 8
    end

    it "a conversão do numero 2321 na base 5 para decimal deve ser igual a 336" do
      ConversaoDecimal.new('2321', 5).to_decimal.should == 336
    end

    it "a conversão do numero 123 na base 6 para decimal deve ser igual a 51" do
      ConversaoDecimal.new('123', 6).to_decimal.should == 51
    end

    it "a conversão do numero 232 na base 7 para decimal deve ser igual a 121" do
      ConversaoDecimal.new('232', 7).to_decimal.should == 121
    end

    it "a conversão do numero 432 na base 8 para decimal deve ser igual a 282" do
      ConversaoDecimal.new('432', 8).to_decimal.should == 282
    end

    it "a conversão do numero 14 na base 9 para decimal deve ser igual a 13" do
      ConversaoDecimal.new('14', 9).to_decimal.should == 13
    end

    it "a conversão do numero 14 na base 10 para decimal deve ser igual a 14" do
      ConversaoDecimal.new('14', 10).to_decimal.should == 14
    end

    it "a conversão do numero 1230 na base 12 para decimal deve ser igual a 2052" do
      ConversaoDecimal.new('1230', 12).to_decimal.should == 2052
    end

    it "a conversão do numero A67A na base 12 para decimal deve ser igual a 18238" do
      ConversaoDecimal.new('A67A', 12).to_decimal.should == 18238
    end

    it "a conversão do numero 83BC na base 13 para decimal deve ser igual a 18238" do
      ConversaoDecimal.new('83BC', 13).to_decimal.should == 18238
    end

    it "a conversão do numero 690A na base 14 para decimal deve ser igual a 18238" do
      ConversaoDecimal.new('690A', 14).to_decimal.should == 18238
    end

    it "a conversão do numero 560D na base 15 para decimal deve ser igual a 18238" do
      ConversaoDecimal.new('560D', 15).to_decimal.should == 18238
    end

    it "a conversão do numero 473E na base 16 para decimal deve ser igual a 18238" do
      ConversaoDecimal.new('473E', 16).to_decimal.should == 18238
    end

    it "a conversão do numero 3C1E na base 17 para decimal deve ser igual a 18238" do
      ConversaoDecimal.new('3C1E', 17).to_decimal.should == 18238
    end

    it "a conversão do numero 3254 na base 18 para decimal deve ser igual a 18238" do
      ConversaoDecimal.new('3254', 18).to_decimal.should == 18238
    end

    it "a conversão do numero 2C9H na base 19 para decimal deve ser igual a 18238" do
      ConversaoDecimal.new('2C9H', 19).to_decimal.should == 18238
    end

    it "a conversão do numero 25BI na base 20 para decimal deve ser igual a 18238" do
      ConversaoDecimal.new('25BI', 20).to_decimal.should == 18238
    end

    it "a conversão do numero 1K7A na base 21 para decimal deve ser igual a 18238" do
      ConversaoDecimal.new('1K7A', 21).to_decimal.should == 18238
    end

    it "a conversão do numero 1FF0 na base 22 para decimal deve ser igual a 18238" do
      ConversaoDecimal.new('1FF0', 22).to_decimal.should == 18238
    end

    it "a conversão do numero 1BAM na base 23 para decimal deve ser igual a 18238" do
      ConversaoDecimal.new('1BAM', 23).to_decimal.should == 18238
    end

    it "a conversão do numero 17FM na base 24 para decimal deve ser igual a 18238" do
      ConversaoDecimal.new('17FM', 24).to_decimal.should == 18238
    end


    it "a conversão do numero 144D na base 25 para decimal deve ser igual a 18238" do
      ConversaoDecimal.new('144D', 25).to_decimal.should == 18238
    end

    it "a conversão do numero 10PC na base 26 para decimal deve ser igual a 18238" do
      ConversaoDecimal.new('10PC', 26).to_decimal.should == 18238
    end

    it "a conversão do numero P0D na base 27 para decimal deve ser igual a 18238" do
      ConversaoDecimal.new('P0D', 27).to_decimal.should == 18238
    end

    it "a conversão do numero N7A na base 28 para decimal deve ser igual a 18238" do
      ConversaoDecimal.new('N7A', 28).to_decimal.should == 18238
    end

    it "a conversão do numero LJQ na base 29 para decimal deve ser igual a 18238" do
      ConversaoDecimal.new('LJQ', 29).to_decimal.should == 18238
    end

    it "a conversão do numero K7S na base 30 para decimal deve ser igual a 18238" do
      ConversaoDecimal.new('K7S', 30).to_decimal.should == 18238
    end

    it "a conversão do numero IUA na base 31 para decimal deve ser igual a 18238" do
      ConversaoDecimal.new('IUA', 31).to_decimal.should == 18238
    end

    it "a conversão do numero HPU na base 32 para decimal deve ser igual a 18238" do
      ConversaoDecimal.new('HPU', 32).to_decimal.should == 18238
    end

    it "a conversão do numero GOM na base 33 para decimal deve ser igual a 18238" do
      ConversaoDecimal.new('GOM', 33).to_decimal.should == 18238
    end

    it "a conversão do numero FQE na base 34 para decimal deve ser igual a 18238" do
      ConversaoDecimal.new('FQE', 34).to_decimal.should == 18238
    end

    it "a conversão do numero EV3 na base 35 para decimal deve ser igual a 18238" do
      ConversaoDecimal.new('EV3', 35).to_decimal.should == 18238
    end

    it "a conversão do numero E2M na base 36 para decimal deve ser igual a 18238" do
      ConversaoDecimal.new('E2M', 36).to_decimal.should == 18238
    end

    it "a conversão do numero 123 na base 36 para decimal deve ser igual a 1371" do
      ConversaoDecimal.new('123', 36).to_decimal.should == 1371
    end
  end

  context "fracionarios" do
    it "a conversão do numero 0.11 na base 2 para base 10 deve ser igual a 0.75" do
      ConversaoDecimal.new(0.11, 2).to_decimal.should == 0.75
    end

    it "a conversão do numero 10.11 na base 2 para base 10 deve ser igual a 2.75" do
      ConversaoDecimal.new(10.11, 2).to_decimal.should == 2.75
    end

    it "a conversão do numero 11010.11 na base 2 para base 10 deve ser igual a 26.75" do
      ConversaoDecimal.new(11010.11, 2).to_decimal.should == 26.75
    end

    it "a conversão do numero 10111.011 na base 2 para base 10 deve ser igual a 23.375" do
      ConversaoDecimal.new(10111.011, 2).to_decimal.should == 23.375
    end

    it "a conversão do numero 11.20 na base 4 para base 10 deve ser igual a 5.5" do
      ConversaoDecimal.new(11.20, 4).to_decimal.should == 5.5
    end

    it "a conversão do numero 11.20 na base 5 para base 10 deve ser igual a 6.4" do
      ConversaoDecimal.new(11.20, 5).to_decimal.should == 6.4
    end

    it "a conversão do numero 11.20 na base 6 para base 10 deve ser igual a 7.33333333333" do
      ConversaoDecimal.new(11.20, 6).to_decimal.should == 7.333333333333333
    end

    it "a conversão do numero 11.20 na base 7 para base 10 deve ser igual a 8.28571428571" do
      ConversaoDecimal.new(11.20, 7).to_decimal.should == 8.285714285714286
    end

    it "a conversão do numero 11.20 na base 8 para base 10 deve ser igual a 9.25" do
      ConversaoDecimal.new(11.20, 8).to_decimal.should == 9.25
    end

    it "a conversão do numero 11.20 na base 9 para base 10 deve ser igual a 10.2222222222" do
      ConversaoDecimal.new(11.20, 9).to_decimal.should == 10.222222222222221
    end

    it "a conversão do numero 11.20 na base 10 para base 10 deve ser igual a 11.20" do
      ConversaoDecimal.new(11.20, 10).to_decimal.should == 11.20
    end

    it "a conversão do numero 11.20 na base 11 para base 10 deve ser igual a 12.181818181818182" do
      ConversaoDecimal.new(11.20, 11).to_decimal.should == 12.181818181818182
    end

    it "a conversão do numero 11.20 na base 12 para base 10 deve ser igual a 13.1666666667" do
      ConversaoDecimal.new(11.20, 12).to_decimal.should == 13.166666666666666
    end


    it "a conversão do numero 11.20 na base 13 para base 10 deve ser igual a 14.1538461538" do
      ConversaoDecimal.new(11.20, 13).to_decimal.should == 14.153846153846153
    end

    it "a conversão do numero 11.20 na base 14 para base 10 deve ser igual a 15.1428571429" do
      ConversaoDecimal.new(11.20, 14).to_decimal.should == 15.142857142857142
    end

    it "a conversão do numero 11.20 na base 15 para base 10 deve ser igual a 16.1333333333" do
      ConversaoDecimal.new(11.20, 15).to_decimal.should == 16.133333333333333
    end

    it "a conversão do numero 3E0.A na base 16 para base 10 deve ser igual a 992.625" do
      ConversaoDecimal.new('3E0.A', 16).to_decimal.should == 992.625
    end

    it "a conversão do numero 3E0.A na base 17 para base 10 deve ser igual a 1105.58823529" do
      ConversaoDecimal.new('3E0.A', 17).to_decimal.should == 1105.5882352941176
    end

    it "a conversão do numero 3E0.A na base 18 para base 10 deve ser igual a " do
      ConversaoDecimal.new('3E0.A', 18).to_decimal.should == 1224.5555555555557
    end

    it "a conversão do numero 3E0.A na base 19 para base 10 deve ser igual a " do
      ConversaoDecimal.new('3E0.A', 19).to_decimal.should == 1349.5263157894738
    end

    it "a conversão do numero 3E0.A na base 20 para base 10 deve ser igual a 1480.5" do
      ConversaoDecimal.new('3E0.A', 20).to_decimal.should == 1480.5
    end

    it "a conversão do numero 3E0.A na base 21 para base 10 deve ser igual a 1617.47619048" do
      ConversaoDecimal.new('3E0.A', 21).to_decimal.should == 1617.4761904761904
    end

    it "a conversão do numero 3E0.A na base 22 para base 10 deve ser igual a 1760.45454545" do
      ConversaoDecimal.new('3E0.A', 22).to_decimal.should == 1760.4545454545455
    end

    it "a conversão do numero 3E0.A na base 23 para base 10 deve ser igual a 1909.43478261" do
      ConversaoDecimal.new('3E0.A', 23).to_decimal.should == 1909.4347826086957
    end

    it "a conversão do numero 3N0.A na base 24 para base 10 deve ser igual a 2064.41666667" do
      ConversaoDecimal.new('3N0.A', 24).to_decimal.should == 2280.4166666666665
    end

    it "a conversão do numero 3O0.A na base 25 para base 10 deve ser igual a 2475.4" do
      ConversaoDecimal.new('3O0.A', 25).to_decimal.should == 2475.4
    end

    it "a conversão do numero 3P0.A na base 26 para base 10 deve ser igual a 2678.38461538" do
      ConversaoDecimal.new('3P0.A', 26).to_decimal.should == 2678.3846153846152
    end

    it "a conversão do numero 3Q0.A na base 27 para base 10 deve ser igual a 2889.37037037" do
      ConversaoDecimal.new('3Q0.A', 27).to_decimal.should == 2889.3703703703704
    end

    it "a conversão do numero 3R0.A na base 28 para base 10 deve ser igual a 3108.3571428571427" do
      ConversaoDecimal.new('3R0.A', 28).to_decimal.should == 3108.3571428571427
    end

    it "a conversão do numero 3S0.A na base 29 para base 10 deve ser igual a 3335.344827586207" do
      ConversaoDecimal.new('3S0.A', 29).to_decimal.should == 3335.344827586207
    end

    it "a conversão do numero 3T0.A na base 30 para base 10 deve ser igual a 3335.344827586207" do
      ConversaoDecimal.new('3T0.A', 30).to_decimal.should == 3570.3333333333335
    end

    it "a conversão do numero 3U0.A na base 31 para base 10 deve ser igual a 3813.3225806451615" do
      ConversaoDecimal.new('3U0.A', 31).to_decimal.should == 3813.3225806451615
    end

    it "a conversão do numero 3V0.A na base 32 para base 10 deve ser igual a 4064.3125" do
      ConversaoDecimal.new('3V0.A', 32).to_decimal.should == 4064.3125
    end

    it "a conversão do numero 3W0.A na base 33 para base 10 deve ser igual a 4323.30303030303" do
      ConversaoDecimal.new('3W0.A', 33).to_decimal.should == 4323.30303030303
    end

    it "a conversão do numero 3X0.A na base 34 para base 10 deve ser igual a 4590.294117647059" do
      ConversaoDecimal.new('3X0.A', 34).to_decimal.should == 4590.294117647059
    end

    it "a conversão do numero 3Y0.A na base 35 para base 10 deve ser igual a 4865.285714285715" do
      ConversaoDecimal.new('3Y0.A', 35).to_decimal.should == 4865.285714285715
      end

    it "a conversão do numero 3Z0.A na base 36 para base 10 deve ser igual a 5148.277777777777" do
      ConversaoDecimal.new('3Z0.A', 36).to_decimal.should == 5148.277777777777
    end

  end
end