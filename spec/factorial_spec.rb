require 'spec_helper'

describe Factorial do

  it "should return factorial of given number" do
    Factorial.factorial(25).should eq(120)
  end
end