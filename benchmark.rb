require './lib/algo_1'
require './lib/algo_2'
require './lib/algo_3'
require 'benchmark'

calc_1 = TwoMultiplesToLimit.new
calc_2 = SecondTwoMultiplesToLimit.new

puts
puts "**********************************************************"
puts "* Compare with multiples of 3 or 5 with limit of 500,000 *"
Benchmark.bm(15) do |x|
  x.report("Algo 1") {calc_1.run 3, 5, 500_000}
  x.report("Algo 2") {calc_2.run 3, 5, 500_000}
  x.report("Algo 3") {500_000.sum_multiples_less_than_self 3, 5}
end
puts
puts "*                   End Benchmark                        *"
puts "**********************************************************"
 # => nil
# >> 
# >> **********************************************************
# >> * Compare with multiples of 3 or 5 with limit of 500,000 *
# >>                       user     system      total        real
# >> Algo 1            0.170000   0.020000   0.190000 (  0.182522)
# >> Algo 2            0.060000   0.000000   0.060000 (  0.059442)
# >> Algo 3            0.050000   0.000000   0.050000 (  0.055484)
# >> 
# >> *                   End Benchmark                        *
# >> **********************************************************
