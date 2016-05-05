
class Fixnum
    
  def sum_multiples_less_than_self(multiple_one, multiple_two)
    sum = 0

    (1...self).each do |num|
      sum += num if num % multiple_one == 0 || num % multiple_two == 0
    end

    return sum
  end
end
