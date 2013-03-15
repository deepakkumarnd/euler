require './euler007.rb'

describe "nth prime number" do
  it { 13.prime?.should be_true }
  it { 47.prime?.should be_true }

  it { nth_prime_number(1).should == 2 }
  it { nth_prime_number(2).should == 3 }
  it { nth_prime_number(3).should == 5 }
  it { nth_prime_number(4).should == 7 }
  it { nth_prime_number(5).should == 11 }
  it { nth_prime_number(6).should == 13 }
  it { nth_prime_number(7).should == 17 }
end
