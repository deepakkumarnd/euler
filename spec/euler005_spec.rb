require './euler005.rb'

describe 'Least number divisible by first n whole numbers' do
  it "returns least_number_divisible_by 1" do
    get_least_number_divisible_by(1..1).should == 1
  end

  it "returns least_number_divisible_by 1..2" do
    get_least_number_divisible_by(1..2).should == 2
  end

  it "returns least_number_divisible_by 1..3" do
    get_least_number_divisible_by(1..3).should == 6
  end

  it "returns least_number_divisible_by 1..4" do
    get_least_number_divisible_by(1..4).should == 12
  end

  it "returns least_number_divisible_by 1..5" do
    get_least_number_divisible_by(1..5).should == 60
  end

  it "returns least_number_divisible_by 1..5" do
    get_least_number_divisible_by(1..10).should == 2520
  end

  it "returns least_number_divisible_by 1..5" do
    get_least_number_divisible_by(1..20).should == 232792560
  end
end

describe Integer do
  it "should respond to to_simple_factors" do
    100.respond_to?(:to_simple_factors).should be_true
  end

  it "should respond to to_simple_factors" do
    100.respond_to?(:to_simple_factors).should be_true
  end

  it "should give me simple factors of any number" do
    10.to_simple_factors.should == [1, 2, 5]
  end
end
