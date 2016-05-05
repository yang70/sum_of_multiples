
require 'minitest/autorun'
require 'minitest/spec'
require_relative '../lib/algo_3'

describe "confirm algo_3 is calculating correctly" do

  it "returns the correct value" do
    1000.sum_multiples_less_than_self(3, 5).must_equal 233168
  end
end
