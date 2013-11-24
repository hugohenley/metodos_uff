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

    it "a conversão do numero 3E0.A na base 16 para base 10 deve ser igual a 992.625" do
      ConversaoDecimal.new('3E0.A', 16).to_decimal.should == 992.625
    end
  end

end