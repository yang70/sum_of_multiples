require 'minitest/autorun'
require 'minitest/spec'
require_relative '../lib/algo_1'

describe "confirm algo_1 is calculating correctly" do

  it "return the correct value" do
    m = TwoMultiplesToLimit.new
    m.run(3, 5, 1000).must_equal 233168
  end
end
