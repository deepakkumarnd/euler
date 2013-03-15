require './euler006.rb'

describe "sum of squares" do
  it "gives me sum of square of first 3 number" do
    sum_of_squares(3).should == 14
  end

  it "gives me sum of square of first 4 number" do
    sum_of_squares(4).should == 30
  end

  it "gives me sum of square of first 10 number" do
    sum_of_squares(10).should == 385
  end
end


describe "square of sums" do
  it "gives me square of sums of first 3 number" do
    square_of_sums(3).should == 36
  end

  it "gives me square of sums of first 4 number" do
    square_of_sums(4).should == 100
  end

  it "gives me square of sums of first 10 number" do
    square_of_sums(10).should == 3025
  end
end
