#encoding: utf-8
require '../decimal_outra'

describe DecimalOutra do

  context "inteiros" do
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

    it "a conversão do decimal 18238 para base 10 deve ser igual a 18238" do
      DecimalOutra.new(18238, 10).converter.should == '18238'
    end

    it "a conversão do decimal 18238 para base 11 deve ser igual a 12780" do
      DecimalOutra.new(18238, 11).converter.should == '12780'
    end

    it "a conversão do decimal 18238 para base 12 deve ser igual a A67A" do
      DecimalOutra.new(18238, 12).converter.should == 'A67A'
    end

    it "a conversão do decimal 18238 para base 13 deve ser igual a 83BC" do
      DecimalOutra.new(18238, 13).converter.should == '83BC'
    end

    it "a conversão do decimal 18238 para base 14 deve ser igual a 690A" do
      DecimalOutra.new(18238, 14).converter.should == '690A'
    end

    it "a conversão do decimal 18238 para base 15 deve ser igual a 560D" do
      DecimalOutra.new(18238, 15).converter.should == '560D'
    end

    it "a conversão do decimal 18238 para base 15 deve ser igual a 560D" do
      DecimalOutra.new(18238, 15).converter.should == '560D'
    end

    it "a conversão do decimal 18238 para base 16 deve ser igual a 473E" do
      DecimalOutra.new(18238, 16).converter.should == '473E'
    end

    it "a conversão do decimal 18238 para base 17 deve ser igual a 3C1E" do
      DecimalOutra.new(18238, 17).converter.should == '3C1E'
    end

    it "a conversão do decimal 18238 para base 18 deve ser igual a 3254" do
      DecimalOutra.new(18238, 18).converter.should == '3254'
    end

    it "a conversão do decimal 18238 para base 19 deve ser igual a 2C9H" do
      DecimalOutra.new(18238, 19).converter.should == '2C9H'
    end

    it "a conversão do decimal 18238 para base 20 deve ser igual a 25BI" do
      DecimalOutra.new(18238, 20).converter.should == '25BI'
    end

    it "a conversão do decimal 18238 para base 21 deve ser igual a 1K7A" do
      DecimalOutra.new(18238, 21).converter.should == '1K7A'
    end

    it "a conversão do decimal 18238 para base 22 deve ser igual a 1FF0" do
      DecimalOutra.new(18238, 22).converter.should == '1FF0'
    end

    it "a conversão do decimal 18238 para base 23 deve ser igual a 1BAM" do
      DecimalOutra.new(18238, 23).converter.should == '1BAM'
    end

    it "a conversão do decimal 18238 para base 24 deve ser igual a 17FM" do
      DecimalOutra.new(18238, 24).converter.should == '17FM'
    end

    it "a conversão do decimal 18238 para base 25 deve ser igual a 144D" do
      DecimalOutra.new(18238, 25).converter.should == '144D'
    end

    it "a conversão do decimal 18238 para base 26 deve ser igual a 10PC" do
      DecimalOutra.new(18238, 26).converter.should == '10PC'
    end

    it "a conversão do decimal 18238 para base 27 deve ser igual a P0D" do
      DecimalOutra.new(18238, 27).converter.should == 'P0D'
    end

    it "a conversão do decimal 18238 para base 28 deve ser igual a N7A" do
      DecimalOutra.new(18238, 28).converter.should == 'N7A'
    end

    it "a conversão do decimal 18238 para base 29 deve ser igual a LJQ" do
      DecimalOutra.new(18238, 29).converter.should == 'LJQ'
    end

    it "a conversão do decimal 18238 para base 30 deve ser igual a K7S" do
      DecimalOutra.new(18238, 30).converter.should == 'K7S'
    end

    it "a conversão do decimal 18238 para base 31 deve ser igual a IUA" do
      DecimalOutra.new(18238, 31).converter.should == 'IUA'
    end

    it "a conversão do decimal 18238 para base 32 deve ser igual a HPU" do
      DecimalOutra.new(18238, 32).converter.should == 'HPU'
    end

    it "a conversão do decimal 18238 para base 33 deve ser igual a GOM" do
      DecimalOutra.new(18238, 33).converter.should == 'GOM'
    end

    it "a conversão do decimal 18238 para base 34 deve ser igual a FQE" do
      DecimalOutra.new(18238, 34).converter.should == 'FQE'
    end

    it "a conversão do decimal 18238 para base 35 deve ser igual a EV3" do
      DecimalOutra.new(18238, 35).converter.should == 'EV3'
    end

    it "a conversão do decimal 18238 para base 35 deve ser igual a EV3" do
      DecimalOutra.new(18238, 35).converter.should == 'EV3'
    end

    it "a conversão do decimal 18238 para base 36 deve ser igual a E2M" do
      DecimalOutra.new(18238, 36).converter.should == 'E2M'
    end
  end

  context "fracionarios" do
    it "a conversão do decimal 26.875 para base 2 deve ser igual a 11010.111" do
      DecimalOutra.new(26.875, 2).converter.should == '11010.111'
    end

    it "a conversão do decimal 0.828125 para base 2 deve ser igual a 0.110101" do
      DecimalOutra.new(0.828125, 2).converter.should == '0.110101'
    end

    it "a conversão do decimal 20.40 para base 4 deve ser igual a 110.121212121212121212121212" do
      DecimalOutra.new(20.40, 4).converter.should == '110.121212121212121212121212122'
    end

    it "a conversão do decimal 300.20 para base 5 deve ser igual a aproximadamente 2200.1" do
      DecimalOutra.new(300.20, 5).converter.should == '2200.1'
    end

    it "a conversão do decimal 1.20 para base 6 deve ser igual a aproximadamente 1.1111111111111111111101204350325445331245033130231043" do
      DecimalOutra.new(1.20, 6).converter.should == '1.111111111111111111111503252334004413500433345541513'
    end

    it "a conversão do decimal 35.015625 para base 8 deve ser igual a 43.01" do
      DecimalOutra.new(35.015625, 8).converter.should == '43.01'
    end

    it "a conversão do decimal 0.140625 para base 8 deve ser igual a 0.11" do
      DecimalOutra.new(0.140625, 8).converter.should == '0.11'
    end

    it "a conversão do decimal 40.72 para base 16 deve ser igual a 28.B851EB851EB851EB851EB8" do
      DecimalOutra.new(40.72, 16).converter.should == '28.B851EB851EB85'
    end

    it "a conversão do decimal 0.06640625 para base 16 deve ser igual a 11" do
      DecimalOutra.new(0.06640625, 16).converter.should == '0.11'
    end

    it "a conversão do decimal 49.23 para base 16 deve ser igual a 31.3AE147AE147AE147AE147A" do
      DecimalOutra.new(49.23, 16).converter.should == '31.3AE147AE147AE2'
    end

    it "a conversão do decimal 0.38 para base 16 deve ser igual a 0.6147AE147AE148" do
      DecimalOutra.new(0.38, 16).converter.should == '0.6147AE147AE148'
    end

    it "a conversão do decimal 10.20 para base 32 deve ser igual a A.6CPJ6CPJ6C" do
      DecimalOutra.new(10.20, 32).converter.should == 'A.6CPJ6CPJ6CQ'
    end
  end
end