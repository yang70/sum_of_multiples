require 'minitest/autorun'
require 'minitest/spec'
require_relative '../lib/algo_2'

describe "confirm solution_2 is calculating correctly" do

  it "return the correct value" do
    n = SecondTwoMultiplesToLimit.new
    n.run(3, 5, 1000).must_equal 233168
  end
end
