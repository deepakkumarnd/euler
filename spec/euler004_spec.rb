require './euler004.rb'

describe Integer do
  it "should respond to factorize" do
    10.respond_to?(:factorize).should be_true
  end
 
  it "factorizes the number" do
    25.factorize.should == [1, 5, 25]
  end

  it "returns an array of factors" do
    120.factorize.class.should == Array
  end
  
  it "returns factors in ascending order" do
    120.factorize.should == 120.factorize.sort
  end
  
  it "returns [] for 0" do
    0.factorize.should == []
  end
  it "returns only one factor for 1" do
    1.factorize.should == [1]
  end
  
  it "returns both factors for -1" do
    -1.factorize.should == [1, -1]
  end  
end

describe Array do
  it "does not respond to get_2_digit_factors" do
    [].respond_to?(:get_2_digit_factors).should be_false
  end
  
  it "defines method get_2_digit_factors dynamically" do
    [1, 22, 33, 444].get_2_digit_factors.should == [22, 33]
  end
  
  it "defines method get_n_digit_factors dynamically" do
    [1, 33, 333].get_3_digit_factors.should == [333]
  end
end
