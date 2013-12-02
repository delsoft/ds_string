# encoding: utf-8
require 'ds_string'

describe String do 

	context "#times" do
		it { "0".times(3).should eq "000"}
		it { "0".times 3 do |s|  "#{s}A,"; end.should eq "0A,0A,0A,"}
		it { "A".times 3 do |s,c| "#{c||s}X-"; end.should eq "AX-AX-X-AX-AX-X-X-"}
	end

	context "#to_bool" do

		it { "1".to_bool.should be_true }
		it { "y".to_bool.should be_true }
		it { "yes".to_bool.should be_true }
		it { "t".to_bool.should be_true }
		it { "true".to_bool.should be_true }
		it { "True".to_bool.should be_true }
		it { "TRUE".to_bool.should be_true }
		it { "s".to_bool.should be_true }
		it { "sim".to_bool.should be_true }

		it { "0".to_bool.should be_false }
		it { "n".to_bool.should be_false }
		it { "no".to_bool.should be_false }
		it { "f".to_bool.should be_false }
		it { "false".to_bool.should be_false }
		it { "False".to_bool.should be_false }
		it { "FALSE".to_bool.should be_false }
		it { "nao".to_bool.should be_false }
		it { "não".to_bool.should be_false }

		it { expect{ "xx".to_bool }.to raise_error }

        
		it "should has #to_b alias for #to_bool" do "true".to_b.should be_true end

	end

end
